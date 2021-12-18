//
//  SholatSchedule.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import Foundation
// swiftlint:disable type_body_length file_length line_length

struct SholatSchedule {

    var schedule = [SholatEnum: Date]()

    init(timings: Timings) {
        schedule[.fajr] = ApplicationUtil.convertStringToDateTime(timeString: timings.fajr)
        schedule[.sunrise] = ApplicationUtil.convertStringToDateTime(timeString: timings.sunrise)
        schedule[.dhuhr] = ApplicationUtil.convertStringToDateTime(timeString: timings.dhuhr)
        schedule[.asr] = ApplicationUtil.convertStringToDateTime(timeString: timings.asr)
        schedule[.maghrib] = ApplicationUtil.convertStringToDateTime(timeString: timings.maghrib)
        schedule[.isha] = ApplicationUtil.convertStringToDateTime(timeString: timings.isha)
    }

    func getCurrentSholat(currentTime: Date = Date()) -> SholatEnum {
        var result: SholatEnum? = nil

        for sholat in SholatEnum.allCases where (schedule[sholat]! < currentTime) {
            result = sholat
        }
        if let resultUnwrap = result {
            return resultUnwrap
        } else {
            return .isha
        }
    }

    func getDurationAndRemainingTime(currentSholat: SholatEnum, time: Date) -> SholatNow {
        let adhanTime = schedule[currentSholat]!

        if (currentSholat == .isha) && (time > adhanTime) {
            let tomorrowFajr = Calendar.current.date(byAdding: .day, value: 1, to: schedule[.fajr]!)!
            let duration = Calendar.current.dateComponents([.second], from: schedule[.isha]!, to: tomorrowFajr).second!
            let remainingTime = Calendar.current.dateComponents([.second], from: time, to: tomorrowFajr).second!

            let result = SholatNow(currentSholat: currentSholat, nextSholat: .fajr, durationSecond: Double(duration), remainingTimeSecond: Double(remainingTime), nextSholatTime: tomorrowFajr)
            return result

        } else if (currentSholat == .isha) && (time < adhanTime) {
            let yesterdayIsha = Calendar.current.date(byAdding: .day, value: -1, to: schedule[.isha]!)!
            let duration = Calendar.current.dateComponents([.second], from: yesterdayIsha, to: schedule[.fajr]!).second!
            let remainingTime = Calendar.current.dateComponents([.second], from: time, to: schedule[.fajr]!).second!

            let result = SholatNow(currentSholat: currentSholat, nextSholat: .fajr, durationSecond: Double(duration), remainingTimeSecond: Double(remainingTime), nextSholatTime: schedule[.fajr]!)
            return result

        } else {
            let currentIndex = SholatEnum.allCases.firstIndex(of: currentSholat)!
            let nextIndex = currentIndex + 1
            let endSholatTime = schedule[SholatEnum.allCases[nextIndex]]!

            let duration = Calendar.current.dateComponents([.second], from: adhanTime, to: endSholatTime).second!
            let remainingTime = Calendar.current.dateComponents([.second], from: time, to: endSholatTime).second!

            let result = SholatNow(currentSholat: currentSholat, nextSholat: SholatEnum.allCases[nextIndex], durationSecond: Double(duration), remainingTimeSecond: Double(remainingTime), nextSholatTime: endSholatTime)
            return result
        }
    }

    func getNextSholat(currentSholat: SholatEnum) -> SholatEnum {
        let currentIndex = SholatEnum.allCases.firstIndex(of: currentSholat)!
        var nextIndex = 0

        if currentIndex < 5 {
            nextIndex = currentIndex + 1
        }

        return SholatEnum.allCases[nextIndex]
    }

}
