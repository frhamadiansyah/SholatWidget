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

    @ObservedObject var viewModel: ScheduleViewModel
    
    let formatter = DateFormatter()


    var body: some View {
        VStack {
            Text(viewModel.currentSholat)
                .font(.title2)
                .padding()
            Spacer()
            ZStack {
                CountdownWheelView(totalDurationSecond: $viewModel.totalDurationTime, remainingTimeSecond: $viewModel.remainingTime)
                    .padding()

                VStack {
                    Text("next")
                        .font(.caption)
                    Text(viewModel.nextSholat)
                        .font(.headline)
                    Text("At")
                        .font(.caption)
                    
                    Text(formatter.string(from: viewModel.nextSholatTime))
                        .font(.caption)
    //                Text("Timer count \(remainingTime)")
                    HStack(alignment: .bottom, spacing: 3) {
                        Text("in")
                            .font(.caption)
                        Text(viewModel.nextSholatTime, style: .timer)
    //                        .font(.caption)
                    }
                }

            }
            .onAppear(perform: {
                formatter.timeStyle = .medium
            })
            .onReceive(timer) { _ in
                if viewModel.remainingTime > 0 {
                    viewModel.remainingTime -= 1
                } else {
    //                updateParam(date: Stub.triggerDate)
                    viewModel.updateParam(date: Date())
                }
            }
            .onChange(of: scenePhase) { newScenePhase in
                switch newScenePhase {
                case .active:
                    print("App is active")
                    viewModel.updateParam(date: Date())
                case .inactive:
                    print("App is inactive")
                case .background:
                    print("App is in background")
                @unknown default:
                    print("Oh - interesting: I received an unexpected new value.")
                }
        }
        }
    }
    
}

struct SholatScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        SholatScheduleView(viewModel: ScheduleViewModel())
    }
}
