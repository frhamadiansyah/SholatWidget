//
//  SholatAPIServiceProtocol.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

protocol SholatAPIServiceProtocol {
    func fetchSholatTimings(withModel model: SholatTimingsRequestModel, completionHandler: @escaping (SholatAPIResponse?, SholatError?) -> Void)
}
