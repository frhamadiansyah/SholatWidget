//
//  Stub.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import Foundation

struct Stub {
    static let timingsStub = Timings(fajr: "04:09 (BST)", sunrise: "06:14 (BST)", dhuhr: "13:00 (BST)", asr: "16:44 (BST)", maghrib: "19:46 (BST)", isha: "21:42 (BST)")

    static let dummyDate = Calendar.current.date(bySettingHour: 11, minute: 51, second: 50, of: Date())!
    static let sholatScheduleStub = SholatSchedule(timings: Stub.timingsStub)
    static let dhuhrTime = Calendar.current.date(bySettingHour: 14, minute: 0, second: 0, of: Date())!
    static let sholatNowStub = Stub.sholatScheduleStub.getDurationAndRemainingTime(currentSholat: .dhuhr, time: Stub.dhuhrTime)
}