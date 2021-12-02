//
//  SholatLocationManager.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import CoreLocation

class SholatLocationManager: NSObject, CLLocationManagerDelegate {

    var locationManager: CLLocationManagerProtocol = CLLocationManager()
    
    var location: CLLocationCoordinate2D?
    func getLocation() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = (manager.location?.coordinate)!
        if let unwrapLocation = location {
            print(unwrapLocation.latitude)
            print(unwrapLocation.longitude)
        }
    }
}
