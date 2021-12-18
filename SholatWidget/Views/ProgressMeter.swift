//
//  ProgressMeter.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import SwiftUI

struct ProgressMeter: View {

    var duration: Double
    @State var remainingTime: Double

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)

            Circle()
                .trim(from: 0.0, to: CGFloat(remainingTime/duration))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(remainingTime/duration < 0.25 ? Color("primary") : Color("secondary"))
                .rotationEffect(Angle(degrees: 270.0))
        }
        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
        .onReceive(timer) { _ in
            if remainingTime < duration {
                remainingTime -= 1
            }

        }
    }
}

struct ProgressMeter_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12"], id: \.self) { deviceName in
                ProgressMeter(duration: 100, remainingTime: 60)
                    .previewDevice(.init(rawValue: deviceName))
                    .previewDisplayName(deviceName)
                  }
    }
}
