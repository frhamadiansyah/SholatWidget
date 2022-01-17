//
//  ScheduleViewModel.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 17/01/22.
//

import Foundation
import Combine

class ScheduleViewModel: ObservableObject {

    @Published var schedule: SholatSchedule?

    @Published var totalDurationTime: Double = 0
    @Published var remainingTime: Double = 0
    @Published var currentSholat: String = ""
    @Published var nextSholat: String = ""
    @Published var nextSholatTime: Date = Date()

    var disposable = Set<AnyCancellable>()
    
    let vmID = UUID().uuidString


    init() {
        print("Schedule View Model \(vmID) is Initiated ✅")
        

        self.$schedule.sink { complete in
            print("Schedule Receiver destroyed")
        } receiveValue: { [unowned self] schedule in
            if let scheduleUnwrap = schedule {
                let currentSholat = scheduleUnwrap.getCurrentSholat()
                let sholatNow = scheduleUnwrap.getDurationAndRemainingTime(currentSholat: currentSholat, time: Date())

                self.totalDurationTime = sholatNow.durationSecond
                self.remainingTime = sholatNow.remainingTimeSecond
                self.nextSholatTime = sholatNow.nextSholatTime
                self.nextSholat = sholatNow.nextSholat.rawValue
                self.currentSholat = sholatNow.currentSholat.rawValue
            }
        }.store(in: &disposable)


    }
    
    func updateParam(date: Date) {
        if let scheduleUnwrap = schedule {
            let currentSholat = scheduleUnwrap.getCurrentSholat()
            let sholatNow = scheduleUnwrap.getDurationAndRemainingTime(currentSholat: currentSholat, time: Date())

            self.totalDurationTime = sholatNow.durationSecond
            self.remainingTime = sholatNow.remainingTimeSecond
            self.nextSholatTime = sholatNow.nextSholatTime
            self.nextSholat = sholatNow.nextSholat.rawValue
            self.currentSholat = sholatNow.currentSholat.rawValue
        }
    }
    
    deinit {
        print("Schedule View Model \(vmID) is Destroyed ❌")
    }

}
