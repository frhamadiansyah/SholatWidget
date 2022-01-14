//
//  SholatScheduleView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 14/01/22.
//

import SwiftUI

struct SholatScheduleView: View {
    @Environment(\.scenePhase) var scenePhase
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var schedule: SholatSchedule
    
    init(schedule: SholatSchedule) {
        self._schedule = State(initialValue: schedule)
    }
    
    var body: some View {
        ZStack {
//            CountdownWheelView(totalDurationSecond: $totalDurationTime, remainingTimeSecond: $remainingTime)
//                .padding()

            VStack {
                Text("next")
                    .font(.caption)
//                Text(sholatNows.nextSholat.rawValue)
//                    .font(.headline)
                Text("At")
                    .font(.caption)
                
//                Text(formatter.string(from: sholatNows.nextSholatTime))
//                    .font(.caption)
//                Text("Timer count \(remainingTime)")
//                HStack(alignment: .bottom, spacing: 3) {
//                    Text("in")
//                        .font(.caption)
//                    Text(sholatNows.nextSholatTime, style: .timer)
//                        .font(.caption)
////                    Text("\(remainingTime) seconds")
////                        .font(.caption2)
//                }
            }

        }
//        .onReceive(timer) { _ in
//            if remainingTime > 0 {
//                remainingTime -= 1
//            } else {
////                updateParam(date: Stub.triggerDate)
//                updateParam(date: Date())
//            }
//        }
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("App is active")
                updateParam(date: Date())
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in background")
            @unknown default:
                print("Oh - interesting: I received an unexpected new value.")
            }
        }
    }
    
    func updateParam(date: Date) {
        let sholat = schedule.getCurrentSholat(currentTime: date)
//        sholatNows = schedule.getDurationAndRemainingTime(currentSholat: sholat, time: date)
//        remainingTime = sholatNows.remainingTimeSecond
//        totalDurationTime = sholatNows.durationSecond
    }
}

struct SholatScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        SholatScheduleView(schedule: Stub.sholatScheduleStub)
    }
}
