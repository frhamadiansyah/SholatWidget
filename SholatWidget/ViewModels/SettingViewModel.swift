//
//  SettingViewModel.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 07/01/22.
//

import Foundation
import CoreLocation
import Combine
import MapKit

class SettingViewModel: ObservableObject {

    @Published var useLocationService: Bool = false

    var locationManager: SholatLocationManager = SholatLocationManager.shared

    var disposable = Set<AnyCancellable>()

    @Published var queryFragment: String = ""
    @Published var status: LocationStatus = .idle

    @Published var results: [LocationSuggestion] = []
    @Published var selectedLocation: LocationSuggestion?
    
    @Published var locationName: String?


    init() {
        print("Setting View Model is initiated ✅")
        self.useLocationService = UserDefaults.standard.bool(forKey: ApplicationUtil.useLocationServices)

        //subscribe useLocationService
        self.$useLocationService.sink { [unowned self] bool in
            UserDefaults.standard.set(bool, forKey: ApplicationUtil.useLocationServices)
            if bool {
                self.locationManager.getLocation()
                self.locationManager.locationManager.startUpdatingLocation()
            } else {
                self.locationManager.stopLocation()
            }
        }.store(in: &disposable)

        // funnel queryFragment to locationManager
        self.$queryFragment.sink { [unowned self] frag in
            self.locationManager.queryFragment = frag
        }.store(in: &disposable)

        // funnel status from locationManager to front end
        self.locationManager.$status.sink { [unowned self] status in
            self.status = status
        }.store(in: &disposable)

        // display search result from location manager
        self.locationManager.$searchResults.sink { [unowned self] results in
            self.results = results
        }.store(in: &disposable)

        // send selectedLocation to location manager, and trigger new fetch
        self.$selectedLocation.sink { [unowned self] location in
            if let loc = location {
                self.locationManager.placemark = loc
                self.locationManager.getCoordinate(for: "\(loc.city), \(loc.country)") { coord in
                    if let coordUnwrap = coord {
                        self.locationManager.location = coordUnwrap
                    }
                }
            }

        }.store(in: &disposable)
        
        self.locationManager.$placemarkString.sink { [unowned self] placemark in
            if let placemarkUnwrap = placemark {
                self.locationName = placemarkUnwrap
            }
        }.store(in: &disposable)

    }
    deinit {
        print("Setting View Model is Destroyed ❌")
    }

}
