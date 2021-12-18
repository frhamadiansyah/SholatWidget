//
//  MockSholatAPIService.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
@testable import SholatWidget

class MockSholatAPIService: SholatAPIServiceProtocol {
    var sholatError: SholatError?
    
    func fetchSholatTimings(withModel model: SholatTimingsRequestModel, completionHandler: @escaping (SholatAPIResponse?, SholatError?) -> Void) {
        if let error = sholatError {
            completionHandler(nil, error)
        } else {
            let safeData = MockConstants.mockResponse.data(using: .utf8)
            let response = try? JSONDecoder().decode(SholatAPIResponse.self, from: safeData!)
            completionHandler(response, nil)
        }
    }
}
