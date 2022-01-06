//
//  SholatViewModel.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import CoreLocation
import Combine

class SholatViewModel: ObservableObject {

    var service: SholatAPIServiceProtocol
    private weak var delegate: SholatViewDelegateProtocol?
//    var locationManager: CLLocationManagerProtocol
    var locationManager: SholatLocationManager = SholatLocationManager()
    @Published var locationName: String?

    @Published var sholatError: SholatError?
    @Published var sholatSchedule: SholatSchedule?

    var disposable = Set<AnyCancellable>()

    init(service: SholatAPIServiceProtocol = SholatAPIService(), delegate: SholatViewDelegateProtocol?) {
        self.service = service
        self.delegate = delegate
        self.locationManager.getLocation()
        print("INIT?")

        // subscriber for significant location changes
        self.locationManager.$location.sink { [unowned self] loc in
            if let locUnwrap = loc {
                let lat = Double(locUnwrap.latitude)
                let lon = Double(locUnwrap.longitude)
                let request = SholatTimingsRequestModel(latitude: lat, longitude: lon, date: Date())
                self.mapTodaysTiming(withModel: request, todaysDate: Date())
            }
        }.store(in: &disposable)

        //subscribe for location placemark
        self.locationManager.$placemark.sink { [unowned self] place in
            if let placeUnwrap = place {
                guard let locality = placeUnwrap.locality else { return }
                guard let name = placeUnwrap.name else { return }
                self.locationName = "\(name), \(locality)"
            }
        }.store(in: &disposable)
    }
    

    func mapTodaysTiming(withModel model: SholatTimingsRequestModel, todaysDate date: Date) {
        let calendar = Calendar.current.dateComponents([.day, .year, .month], from: date)
        service.fetchSholatTimings(withModel: model) { (response, error) in
            if let error = error {
                DispatchQueue.main.async {
                    self.sholatError = error
                    self.delegate?.errorHandler(error: error)
                }
            }
            if let response = response {
                if (model.getMonth(date: model.date) == calendar.month) && (model.getYear(date: model.date) == calendar.year) {
                    if let day = calendar.day {
                        DispatchQueue.main.async {
                            self.delegate?.successfulFetch()
                            self.sholatSchedule = SholatSchedule(timings: response.data[day - 1].timings)
                            // TODO: save timings to persistance
                            // TODO: Convert timings to position
                        }
                    }
                } else {
                    DispatchQueue.main.async {
                        self.sholatError = SholatError.mismatchRequestAndResponse
                        self.delegate?.errorHandler(error: SholatError.mismatchRequestAndResponse)
                    }
                }
            }
        }
    }
}
