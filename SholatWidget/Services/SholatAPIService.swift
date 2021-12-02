//
//  SholatAPIService.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

class SholatAPIService: SholatAPIServiceProtocol {
    
    private var urlSession: URLSession
    
    init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }
    
    func fetchSholatTimings(withModel model: SholatTimingsRequestModel, completionHandler: @escaping (SholatAPIResponse?, SholatError?) -> Void) {
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.aladhan.com"
        components.path = "/v1/calendar"
        components.queryItems = [
            URLQueryItem(name: "longitude", value: String(model.longitude)),
            URLQueryItem(name: "latitude", value: String(model.latitude)),
            URLQueryItem(name: "month", value: String(model.getMonth(date: model.date))),
            URLQueryItem(name: "year", value: String(model.getYear(date: model.date)))
        ]
        
        guard let url = components.url else {
            // TODO : Create tests when error
            return
        }

        let dataTask = urlSession.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completionHandler(nil, SholatError.failedRequest)
                return
            }
            
            if let safeData = data, let sholatAPIResponse = try? JSONDecoder().decode(SholatAPIResponse.self, from: safeData) {
                completionHandler(sholatAPIResponse, nil)

            } else {
                // TODO : Create tests when urlsession error
                completionHandler(nil, SholatError.invalidJSONResponseModel)
            }
        }
        
        dataTask.resume()
        
    }
}
