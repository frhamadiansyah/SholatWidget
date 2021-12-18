//
//  CountdownWheelView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import SwiftUI

struct CountdownWheelView: View {

    @State var sholatNow: SholatNow
    var durationSecond: Double
    @State var remainingTimeSecond: Double

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    @Binding var executeFetch: Bool

    init(sholatNow: SholatNow, executeFetch: Binding<Bool>) {
//        self.sholatNow = sholatNow
        _sholatNow = State(initialValue: sholatNow)
        self.durationSecond = sholatNow.durationSecond
        _remainingTimeSecond = State(initialValue: sholatNow.remainingTimeSecond)
        self._executeFetch = executeFetch
    }

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)

            Circle()
                .trim(from: 0.0, to: CGFloat(remainingTimeSecond/durationSecond))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(remainingTimeSecond/durationSecond < 0.25 ? Color("primary") : Color("secondary"))
                .rotationEffect(Angle(degrees: 270.0))
        }
        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
        .onReceive(timer) { _ in
            if remainingTimeSecond < durationSecond {
                if remainingTimeSecond == 0 {
                    executeFetch = true
                } else {
                    remainingTimeSecond -= 1
                }
            }

        }
    }
}

struct CountdownWheelView_Previews: PreviewProvider {
    static var previews: some View {

        CountdownWheelView(sholatNow: Stub.sholatNowStub, executeFetch: .constant(false))
    }
}
