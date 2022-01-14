//
//  ScheduleView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import SwiftUI

struct ScheduleView: View {
    @Environment(\.scenePhase) var scenePhase
    @Binding var schedule: SholatSchedule

    @State var sholatNows: SholatNow

    @State var remainingTime: Double
    @State var totalDurationTime: Double


    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    init(schedule: Binding<SholatSchedule>) {
//        let time = Stub.dummyDate
        let time = Date()

        self._schedule = schedule

        let currentSholatTemp = schedule.wrappedValue.getCurrentSholat(currentTime: time)
        let sholatNow = schedule.wrappedValue.getDurationAndRemainingTime(currentSholat: currentSholatTemp, time: time)

        self._remainingTime = State(initialValue: sholatNow.remainingTimeSecond)
        self._totalDurationTime = State(initialValue: sholatNow.durationSecond)

        self._sholatNows = State(initialValue: sholatNow)

        formatter.timeStyle = .medium
    }
    
    let formatter = DateFormatter()

    var body: some View {
        ZStack {
            CountdownWheelView(totalDurationSecond: $totalDurationTime, remainingTimeSecond: $remainingTime)
                .padding()

            VStack {
                Text("next")
                    .font(.caption)
                Text(sholatNows.nextSholat.rawValue)
                    .font(.headline)
                Text("At")
                    .font(.caption)
                
                Text(formatter.string(from: sholatNows.nextSholatTime))
                    .font(.caption)
                Text("Timer count \(remainingTime)")
                HStack(alignment: .bottom, spacing: 3) {
                    Text("in")
                        .font(.caption)
                    Text(sholatNows.nextSholatTime, style: .timer)
                        .font(.caption)
//                    Text("\(remainingTime) seconds")
//                        .font(.caption2)
                }
            }

        }.onReceive(timer) { _ in
            if remainingTime > 0 {
                remainingTime -= 1
            } else {
//                updateParam(date: Stub.triggerDate)
                updateParam(date: Date())
            }
        }
        
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
        sholatNows = schedule.getDurationAndRemainingTime(currentSholat: sholat, time: date)
//        currentSholat = sholatNows.currentSholat
//        nextSholat = sholatNows.nextSholat
        remainingTime = sholatNows.remainingTimeSecond
        totalDurationTime = sholatNows.durationSecond
    }


}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(schedule: .constant(Stub.sholatScheduleStub))
    }
}
