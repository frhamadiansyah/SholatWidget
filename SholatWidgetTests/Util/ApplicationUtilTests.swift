//
//  ApplicationUtilTests.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import XCTest
@testable import SholatWidget

class ApplicationUtilTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testApplicationUtil_WhenGivenSuccessfullResponse_ReturnSuccess() throws {
        //arrange
        let input = "14:00 (GMT)"
        let expectation = Calendar.current.date(bySettingHour: 14, minute: 0, second: 0, of: Date())!
        //act
        let result = ApplicationUtil.convertStringToDateTime(timeString: input)
        //assert
        XCTAssert(expectation == result, "convertStringToDateTime() method did not the correct result, should be \(expectation), instead \(result)")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
