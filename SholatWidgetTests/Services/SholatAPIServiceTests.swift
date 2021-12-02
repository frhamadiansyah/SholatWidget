//
//  SholatAPIServiceTests.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

// swiftlint:disable line_length


import XCTest
@testable import SholatWidget

class SholatAPIServiceTests: XCTestCase {
    
    var sut: SholatAPIService!
    var sholatTimingsRequestModel: SholatTimingsRequestModel!
    
    override func setUp() {
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        
        sut = SholatAPIService(urlSession: urlSession)
        sholatTimingsRequestModel = SholatTimingsRequestModel(latitude: 51.508515, longitude: -0.1254872, date: Date(timeIntervalSince1970: 1600000000))
        
    }
    
    override func tearDown() {
        sut = nil
        sholatTimingsRequestModel = nil
        MockURLProtocol.stubResponseData = nil
        MockURLProtocol.error = nil
    }


    func testSholatAPIService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        
        let expectation = self.expectation(description: "Sholat API service response expectation")
        //arrange

        let jsonString = "{\"status\":\"OK\", \"data\": [{ \"timings\": {\"Fajr\": \"04:09 (BST)\",\"Sunrise\": \"06:14 (BST)\",\"Dhuhr\": \"13:00 (BST)\",\"Asr\": \"16:44 (BST)\",\"Sunset\": \"19:46 (BST)\",\"Maghrib\": \"19:46 (BST)\",\"Isha\": \"21:42 (BST)\"}}]}"
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)

        //act
        sut.fetchSholatTimings(withModel: sholatTimingsRequestModel) { (sholatAPIResponse, error) in
            
            //assert
            XCTAssertEqual(sholatAPIResponse?.status, "OK", "")
            XCTAssertEqual(sholatAPIResponse?.data.count, 1, "The response should have one count in data array")
            expectation.fulfill()
            
        }
        self.wait(for: [expectation], timeout: 2)

    }
    
    func testSholatAPIService_WhenUnableDecodeJSON_ReturnError() {
        
        let expectation = self.expectation(description: "Sholat API service response expectation")
        
        let jsonString = "{\"status\":\"OK\", \"datazz\": [{ \"timings\": {\"Fajr\": \"04:09 (BST)\",\"Sunrise\": \"06:14 (BST)\",\"Dhuhr\": \"13:00 (BST)\",\"Asr\": \"16:44 (BST)\",\"Sunset\": \"19:46 (BST)\",\"Maghrib\": \"19:46 (BST)\",\"Isha\": \"21:42 (BST)\"}}]}"
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)

        //act
        sut.fetchSholatTimings(withModel: sholatTimingsRequestModel) { (sholatAPIResponse, error) in
            
            //assert
            XCTAssertNil(sholatAPIResponse, "It should have not return a JSON response")
            XCTAssertEqual(error, SholatError.invalidJSONResponseModel, "Did not return expected error")
            expectation.fulfill()
            
        }
        self.wait(for: [expectation], timeout: 2)
        
    }
    
    func testSholatAPIService_WhenURLRequestFails_ReturnsErrorMessageDescription() {
        let expectation = self.expectation(description: "Sholat API service response expectation")

        MockURLProtocol.error = SholatError.failedRequest

        //act
        sut.fetchSholatTimings(withModel: sholatTimingsRequestModel) { (sholatAPIResponse, error) in
            
            //assert
            XCTAssertNil(sholatAPIResponse, "It should have not return a JSON response")
            XCTAssertEqual(error, SholatError.failedRequest, "Did not return expected error")
            expectation.fulfill()
            
        }
        self.wait(for: [expectation], timeout: 2)
    }

}
