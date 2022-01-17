//
//  HomeView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 02/12/21.
//

import SwiftUI

struct HomeView: View {

    @StateObject var viewModel: SholatViewModel = SholatViewModel(delegate: nil)


    var body: some View {
        VStack {
            Text(viewModel.locationName ?? "")
                .font(.title)
                .padding()
            Text(viewModel.getDateFormatter().string(from: Date()))
            Text(viewModel.getDateFormatter(.islamicCivil).string(from: Date()))
            

            if let scheduleVM = viewModel.scheduleViewModel {
                SholatScheduleView(viewModel: scheduleVM)
                    .onReceive(viewModel.$scheduleViewModel) { _ in
//                        print("Berubahhh")
                        if viewModel.scheduleViewModel == nil {
                            print("‼️ Prev Schedule View Model is destroyed")
                        } else {
                            print("❗️ send Schedule View Model \(viewModel.scheduleViewModel!.vmID) to SholatScheduleView")
                        }
                        
                    }
            }
//            if let schedule = viewModel.sholatSchedule {
//                SholatScheduleView(schedule: viewModel.sholatSchedule)
//            }

        }.padding(.vertical)

    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
