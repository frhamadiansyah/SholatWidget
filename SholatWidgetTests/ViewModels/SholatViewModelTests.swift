//
//  SholatViewModelTests.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import XCTest
@testable import SholatWidget

class SholatViewModelTests: XCTestCase {
    
    var mockSholatAPIService: MockSholatAPIService!
    var mockSholatViewDelegate: MockSholatViewDelegate!
    var mockSholatLocationManager: MockLocationManager!
    var requestModel: SholatTimingsRequestModel!
    var sut: SholatViewModel!

    override func setUp() {
        mockSholatAPIService = MockSholatAPIService()
        mockSholatViewDelegate = MockSholatViewDelegate()
        mockSholatLocationManager = MockLocationManager()
        requestModel = SholatTimingsRequestModel(latitude: 51.508515, longitude: -0.1254872, date: Date(timeIntervalSince1970: 1600000000))
        sut = SholatViewModel(service: mockSholatAPIService, delegate: mockSholatViewDelegate, locationManager: mockSholatLocationManager)
    }
    override func tearDown() {
        mockSholatAPIService = nil
        mockSholatViewDelegate = nil
        requestModel = nil
        sut = nil
    }

    func testSholatViewModel_WhenFetchSholatTimingsSuccessful_ShouldReturnsTimings() {
        let myExpectation = expectation(description: "Expected the fetchSholat() method to be called")
        mockSholatViewDelegate.expectation = myExpectation
        sut.fetchTodaysTiming(withModel: requestModel, todaysDate: Date(timeIntervalSince1970: 1599000000))
        self.wait(for: [myExpectation], timeout: 10)

        XCTAssertNotNil(sut.sholatToday, "fetchTodaysTiming() method did not return a timing object. Should have return an timing object")
        XCTAssertEqual(sut.sholatToday?.fajr, "04:09 (BST)", "fetchTodaysTiming() method fetch the wrong day")
        XCTAssertEqual(mockSholatViewDelegate.successfulFetchCounter, 1, "fetchTodaysTiming() method called more than once")

    }
    func testSholatViewModel_WhenGivenDifferentDateFromResponse_ShouldReturnsError() {
        let myExpectation = expectation(description: "Expected the fetchSholat() method to be called")
        mockSholatViewDelegate.expectation = myExpectation
        sut.fetchTodaysTiming(withModel: requestModel, todaysDate: Date(timeIntervalSince1970: 1499000000))
        self.wait(for: [myExpectation], timeout: 10)

        XCTAssertNotNil(sut.sholatError, "fetchTodaysTiming() method did not return an error when given wrong date")
        XCTAssertEqual(sut.sholatError, SholatError.mismatchRequestAndResponse, "fetchTodaysTiming() method return a wrong error, should be SholatError.mismatchRequestAndResponse")
        XCTAssertEqual(mockSholatViewDelegate.errorHandlerCounter, 1, "fetchTodaysTiming() method return error more than once")
    }
    func testSholatViewModel_WhenGivenErrorFromWebService_ShouldReturnError() {
        let myExpectation = expectation(description: "Expected the fetchSholat() method to be called")
        mockSholatViewDelegate.expectation = myExpectation
        mockSholatAPIService.sholatError = SholatError.failedRequest
        sut.fetchTodaysTiming(withModel: requestModel, todaysDate: Date(timeIntervalSince1970: 1599000000))
        self.wait(for: [myExpectation], timeout: 10)
        XCTAssertNotNil(sut.sholatError, "fetchTodaysTiming() method did not return an error when given error from web service")
        XCTAssertEqual(sut.sholatError, SholatError.failedRequest, "fetchTodaysTiming() method return a wrong error, should be SholatError.faildeRequest")
        XCTAssertEqual(mockSholatViewDelegate.errorHandlerCounter, 1, "fetchTodaysTiming() method return error more than once")
    }
}
