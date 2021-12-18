//
//  SholatScheduleTests.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import XCTest
@testable import SholatWidget

class SholatScheduleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSholatSchedule_whenGivenTime_returnCorrectSholatEnum() throws {
        let timings = Timings(fajr: "04:09 (BST)", sunrise: "06:14 (BST)", dhuhr: "13:00 (BST)", asr: "16:44 (BST)", maghrib: "19:46 (BST)", isha: "21:42 (BST)")
        let sut = SholatSchedule(timings: timings)
        let input = Calendar.current.date(bySettingHour: 14, minute: 0, second: 0, of: Date())!
        let expectation: SholatEnum = .dhuhr
        
        let result = sut.getCurrentSholat(currentTime: input)

        XCTAssert(expectation == result, "getCurrentSholat() method did not the correct result, should be \(expectation), instead \(result)")

    }
    
    func testSholatSchedule_whenGivenTimePreFajr_returnCorrectSholatEnum() throws {
        let timings = Timings(fajr: "04:09 (BST)", sunrise: "06:14 (BST)", dhuhr: "13:00 (BST)", asr: "16:44 (BST)", maghrib: "19:46 (BST)", isha: "21:42 (BST)")
        let sut = SholatSchedule(timings: timings)
        let input = Calendar.current.date(bySettingHour: 3, minute: 0, second: 0, of: Date())!
        let expectation: SholatEnum = .isha
        
        let result = sut.getCurrentSholat(currentTime: input)

        XCTAssert(expectation == result, "getCurrentSholat() method did not the correct result, should be \(expectation), instead \(result)")

    }

    func testSholatSchedule_whenGivenTimePostIsha_returnCorrectSholatEnum() throws {
        let timings = Timings(fajr: "04:09 (BST)", sunrise: "06:14 (BST)", dhuhr: "13:00 (BST)", asr: "16:44 (BST)", maghrib: "19:46 (BST)", isha: "21:42 (BST)")
        let sut = SholatSchedule(timings: timings)
        let input = Calendar.current.date(bySettingHour: 23, minute: 0, second: 0, of: Date())!
        let expectation: SholatEnum = .isha

        let result = sut.getCurrentSholat(currentTime: input)

        XCTAssert(expectation == result, "getCurrentSholat() method did not the correct result, should be \(expectation), instead \(result)")

    }

    func testSholatSchedule_whenGivenSholatEnum_returnCorrectDuration() throws {
        let timings = Timings(fajr: "04:09 (BST)", sunrise: "06:14 (BST)", dhuhr: "13:00 (BST)", asr: "16:44 (BST)", maghrib: "19:46 (BST)", isha: "21:42 (BST)")
        let sut = SholatSchedule(timings: timings)
        let input = Calendar.current.date(bySettingHour: 23, minute: 0, second: 0, of: Date())!
        let expectation: SholatEnum = .isha

        let result = sut.getCurrentSholat(currentTime: input)

        XCTAssert(expectation == result, "getCurrentSholat() method did not the correct result, should be \(expectation), instead \(result)")

    }

}
