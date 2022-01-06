//
//  MockLocationManager.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import CoreLocation
@testable import SholatWidget

class MockLocationManager: CLLocationManagerProtocol {
    func requestAlwaysAuthorization() { }
    func startMonitoringSignificantLocationChanges() { }

    func getAuthorizationStatus() -> CLAuthorizationStatus {
        return .authorizedWhenInUse
    }

    func isLocationServicesEnabled() -> Bool {
        return true
    }
    var location: CLLocation? = CLLocation(
        latitude: 37.3317,
        longitude: -122.0325086
    )

    weak var delegate: CLLocationManagerDelegate?
    var distanceFilter: CLLocationDistance = 10
    var pausesLocationUpdatesAutomatically = false
    var allowsBackgroundLocationUpdates = true

    func requestWhenInUseAuthorization() { }
    func startUpdatingLocation() { }
    func stopUpdatingLocation() { }
}
