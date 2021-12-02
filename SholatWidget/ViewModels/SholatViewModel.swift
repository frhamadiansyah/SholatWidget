//
//  SholatViewModel.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import CoreLocation

class SholatViewModel: ObservableObject {
    
    var service: SholatAPIServiceProtocol
    private weak var delegate: SholatViewDelegateProtocol?
    var locationManager: CLLocationManagerProtocol
    
    @Published var sholatToday: Timings?
    @Published var sholatError: SholatError?
    init(service: SholatAPIServiceProtocol = SholatAPIService(), delegate: SholatViewDelegateProtocol, locationManager: CLLocationManagerProtocol = CLLocationManager()) {
        self.service = service
        self.delegate = delegate
        self.locationManager = locationManager
    }
    func fetchTodaysTiming(withModel model: SholatTimingsRequestModel, todaysDate date: Date) {
        let calendar = Calendar.current.dateComponents([.day, .year, .month], from: date)
        service.fetchSholatTimings(withModel: model) { (response, error) in
            if let error = error {
                self.sholatError = error
                self.delegate?.errorHandler(error: error)
            }
            if let response = response {
                if (model.getMonth(date: model.date) == calendar.month) && (model.getYear(date: model.date) == calendar.year) {
                    if let day = calendar.day {
                        self.sholatToday = response.data[day - 1].timings
                        self.delegate?.successfulFetch()
                    }
                } else {
                    self.sholatError = SholatError.mismatchRequestAndResponse
                    self.delegate?.errorHandler(error: SholatError.mismatchRequestAndResponse)
                }
            }
        }
    }
}
