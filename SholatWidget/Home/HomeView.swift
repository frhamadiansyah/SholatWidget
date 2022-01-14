//
//  HomeView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 02/12/21.
//

import SwiftUI

struct HomeView: View {

    @StateObject var viewModel: SholatViewModel = SholatViewModel(delegate: nil)
    
    let dateFor = DateFormatter()
    let dateForMasehi = DateFormatter()

    let hijriCalendar = Calendar.init(identifier: Calendar.Identifier.islamicCivil)

    init() {
        dateFor.locale = Locale.init(identifier: "en") // or "en" as you want to show numbers
        dateFor.calendar = hijriCalendar

        dateForMasehi.calendar = Calendar.current
        dateForMasehi.dateStyle = .full
//        dateFor.dateFormat = "dd/MM/yyyy"
        dateFor.dateStyle = .full
        print(dateFor.string(from: Date()))

    }

    var body: some View {
        VStack {
            Text(viewModel.locationName ?? "")
                .font(.title)
                .padding()
            Text(dateForMasehi.string(from: Date()))
            Text(dateFor.string(from: Date()))
            Text(viewModel.sholatSchedule?.getCurrentSholat().rawValue ?? "")
                .font(.title2)
                .padding()

            if let schedule = viewModel.sholatSchedule {
                ScheduleView(schedule: schedule)
            }

        }.padding(.vertical)

    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
