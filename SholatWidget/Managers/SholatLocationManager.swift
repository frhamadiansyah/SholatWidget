//
//  SholatLocationManager.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import CoreLocation

class SholatLocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {

//    var locationManager: CLLocationManagerProtocol = CLLocationManager()
    var locationManager = CLLocationManager()
    @Published var location: CLLocationCoordinate2D?
    @Published var placemark: CLPlacemark?

    override init() {
        super.init()
        locationManager.delegate = self
        self.getLocation()
    }
    func getLocation() {

        locationManager.requestAlwaysAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()

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
                    self?.placemark = place
                }

            }
        }

    }

    func getPlace(for location: CLLocation,
                  completion: @escaping (CLPlacemark?) -> Void) {

        let geocoder = CLGeocoder()
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
}
