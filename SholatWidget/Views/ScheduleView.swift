//
//  ScheduleView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import SwiftUI

struct ScheduleView: View {
    var schedule: SholatSchedule

    @Binding var executeFetch: Bool
    @State var sholatNow: SholatNow

    init(schedule: SholatSchedule, executeFetch: Binding<Bool>) {
        self.schedule = schedule
        self._executeFetch = executeFetch
        let time = Stub.dummyDate
        let currentSholatTemp = schedule.getCurrentSholat(currentTime: time)
        self._sholatNow = State(initialValue: schedule.getDurationAndRemainingTime(currentSholat: currentSholatTemp, time: time))

    }

    var body: some View {
        ZStack {
            CountdownWheelView(sholatNow: sholatNow, executeFetch: $executeFetch)
                .padding()

            VStack {
                Text("next")
                    .font(.caption)
                Text(sholatNow.nextSholat.rawValue)
                    .font(.headline)
                HStack(alignment: .bottom, spacing: 3) {
                    Text("in")
                        .font(.caption)
                    Text(sholatNow.nextSholatTime, style: .timer)
                        .font(.caption)
                }
            }

        }
    }

}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(schedule: Stub.sholatScheduleStub, executeFetch: .constant(false))
    }
}
