//
//  CountdownWheelView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import SwiftUI

struct CountdownWheelView: View {

//    let sholatNow: SholatNow
    @Binding var totalDurationSecond: Double
    @Binding var remainingTimeSecond: Double

//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

//    init(sholatNow: SholatNow) {
////        self.sholatNow = sholatNow
//        self.sholatNow = sholatNow
//        self.totalDurationSecond = sholatNow.durationSecond
//        _remainingTimeSecond = State(initialValue: sholatNow.remainingTimeSecond)
//    }

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)

            Circle()
                .trim(from: 0.0, to: CGFloat(remainingTimeSecond/totalDurationSecond))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(remainingTimeSecond/totalDurationSecond < 0.25 ? Color("primary") : Color("secondary"))
                .rotationEffect(Angle(degrees: 270.0))
        }
        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
    }
}

struct CountdownWheelView_Previews: PreviewProvider {
    static var previews: some View {

        CountdownWheelView(totalDurationSecond: .constant(Stub.sholatNowStub.durationSecond), remainingTimeSecond: .constant(Stub.sholatNowStub.remainingTimeSecond))
    }
}
