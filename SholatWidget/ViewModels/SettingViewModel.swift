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

    init() {
        self.useLocationService = UserDefaults.standard.bool(forKey: ApplicationUtil.useLocationServices)

        self.$useLocationService.sink { [unowned self] bool in
            UserDefaults.standard.set(bool, forKey: ApplicationUtil.useLocationServices)
            if bool {
                self.locationManager.getLocation()
            } else {
                print(self.locationManager.locationManager.authorizationStatus.rawValue)
                self.locationManager.stopLocation()
            }
        }.store(in: &disposable)

        self.$queryFragment.sink { [unowned self] frag in
            self.locationManager.queryFragment = frag
        }.store(in: &disposable)

        self.locationManager.$status.sink { [unowned self] status in
            self.status = status
        }.store(in: &disposable)

        self.locationManager.$searchResults.sink { [unowned self] results in
            self.results = results
        }.store(in: &disposable)

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

    }

}
