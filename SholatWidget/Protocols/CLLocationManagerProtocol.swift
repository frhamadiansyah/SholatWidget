//
//  CLLocationManagerProtocol.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import CoreLocation

protocol CLLocationManagerProtocol {
    // CLLocationManager Properties
    var location: CLLocation? { get }
    var delegate: CLLocationManagerDelegate? { get set }
    var distanceFilter: CLLocationDistance { get set }
    var pausesLocationUpdatesAutomatically: Bool { get set }
    var allowsBackgroundLocationUpdates: Bool { get set }

    // CLLocationManager Methods
    func requestWhenInUseAuthorization()
    func startUpdatingLocation()
    func stopUpdatingLocation()
    func requestAlwaysAuthorization()
    func startMonitoringSignificantLocationChanges()

    // Wrappers for CLLocationManager class functions.
    func getAuthorizationStatus() -> CLAuthorizationStatus
    func isLocationServicesEnabled() -> Bool

}
