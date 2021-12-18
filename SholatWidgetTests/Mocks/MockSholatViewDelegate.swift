//
//  MockSholatViewDelegate.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation
import XCTest
@testable import SholatWidget

class MockSholatViewDelegate: SholatViewDelegateProtocol {
    var expectation: XCTestExpectation?
    var successfulFetchCounter = 0
    var errorHandlerCounter = 0
    var sholatError: SholatError?
    func successfulFetch() {
        successfulFetchCounter += 1
        expectation?.fulfill()
    }
    func errorHandler(error: SholatError) {
        errorHandlerCounter += 1
        sholatError = error
        expectation?.fulfill()
    }
}
