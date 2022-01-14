//
//  SholatLocationManager.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import Combine
import CoreLocation
import MapKit

enum LocationStatus: Equatable {
    case idle
    case noResults
    case isSearching
    case error(String)
    case result
}

class SholatLocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {

    // SERVICE
    let locationManager = CLLocationManager()
    let geocoder = CLGeocoder()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var placemark: LocationSuggestion?

    @Published var queryFragment: String = ""
    @Published private(set) var status: LocationStatus = .idle

    @Published var searchResults: [LocationSuggestion] = []

    private var queryCancellable = Set<AnyCancellable>()
    private let searchCompleter: MKLocalSearchCompleter!

    static let shared = SholatLocationManager()

    override init() {
        self.searchCompleter = MKLocalSearchCompleter()
        super.init()
        self.searchCompleter.delegate = self
        locationManager.delegate = self

        if UserDefaults.standard.bool(forKey: ApplicationUtil.useLocationServices) {
            self.getLocation()
        } else {
            self.stopLocation()
        }
       


        $queryFragment
            .receive(on: DispatchQueue.main)
            .debounce(for: .milliseconds(250), scheduler: RunLoop.main, options: nil)
            .sink(receiveValue: { fragment in
                self.status = .isSearching
                if !fragment.isEmpty {
                    self.searchCompleter.queryFragment = fragment
                } else {
                    self.status = .idle
                    self.searchResults = []
                }
            }).store(in: &queryCancellable)
    }

    func getLocation() {
        locationManager.requestAlwaysAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
    }

    func stopLocation() {
        locationManager.stopMonitoringSignificantLocationChanges()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let loc = locations.first
        if let unwrapLoc = loc {
            location = unwrapLoc.coordinate
            print("Update Location")
            print(unwrapLoc.coordinate.latitude)
            print(unwrapLoc.coordinate.longitude)

            //getCLPlacemark
            getPlace(for: unwrapLoc) { [weak self] locationName in
                if let place = locationName {
                    guard let locality = place.locality else { return }
                    guard let country = place.country else { return }
                    self?.placemark = LocationSuggestion(city: locality, country: country)
                }

            }
        }

    }

    func getPlace(for location: CLLocation,
                  completion: @escaping (CLPlacemark?) -> Void) {

        geocoder.reverseGeocodeLocation(location) { placemarks, error in

            guard error == nil else {
                completion(nil)
                return
            }

            guard let placemark = placemarks?[0] else {
                completion(nil)
                return
            }
            
            completion(placemark)
        }
    }
    
    func getCoordinate(for locationName: String, completion: @escaping (CLLocationCoordinate2D?) -> Void) {

        geocoder.geocodeAddressString(locationName) { (placemark, error) in
            if let error = error {
                self.status = .error(error.localizedDescription)
                completion(nil)
            }
            if let places = placemark {
                let result = places.first?.location!.coordinate
                completion(result)
            }
        }
    }
}

extension SholatLocationManager: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.status = completer.results.isEmpty ? .noResults : .result
        self.searchResults = getCityList(results: completer.results)
    }

    func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error) {
        self.status = .error(error.localizedDescription)
    }

    func getCityList(results: [MKLocalSearchCompletion]) -> [LocationSuggestion] {

        var searchResults: [LocationSuggestion] = []

        for result in results {

            let titleComponents = result.title.components(separatedBy: ", ")
            let subtitleComponents = result.subtitle.components(separatedBy: ", ")

            buildCityTypeA(titleComponents, subtitleComponents) { place in

                if place.city != "" && place.country != ""{

                    searchResults.append(place)
                }
            }

            buildCityTypeB(titleComponents, subtitleComponents) { place in

                if place.city != "" && place.country != ""{

                    searchResults.append(place)
                }
            }
        }

        return searchResults
    }

    func buildCityTypeA(_ title: [String], _ subtitle: [String], _ completion: @escaping (LocationSuggestion) -> Void) {

        var city: String = ""
        var country: String = ""

        if title.count > 1 && subtitle.count >= 1 {

            city = title.first!
            country = subtitle.count == 1 && subtitle[0] != "" ? subtitle.first! : title.last!
        }

        completion(LocationSuggestion(city: city, country: country))
    }

    func buildCityTypeB(_ title: [String], _ subtitle: [String], _ completion: @escaping (LocationSuggestion) -> Void) {

        var city: String = ""
        var country: String = ""

        if title.count >= 1 && subtitle.count == 1 {

            city = title.first!
            country = subtitle.last!
        }

        completion(LocationSuggestion(city: city, country: country))
    }
}
