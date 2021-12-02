//
//  SholatError.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

enum SholatError: Error {
    case invalidJSONResponseModel
    case failedRequest
    case mismatchRequestAndResponse
}
