//
//  HomeView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 02/12/21.
//

import SwiftUI

struct HomeView: View {

    @StateObject var viewModel: SholatViewModel = SholatViewModel(delegate: nil)

    @State var executeFetch: Bool = false


    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(viewModel.sholatToday?.asr ?? "")
            Button {
                let model = SholatTimingsRequestModel(latitude: 51.5, longitude: 0.13, date: Stub.dummyDate)
                viewModel.fetchTodaysTiming(withModel: model, todaysDate: Stub.dummyDate)
            } label: {
                Text("Fetch Sholat Time")
                    .padding()
            }

            if let schedule = viewModel.sholatSchedule {
                ScheduleView(schedule: schedule, executeFetch: $executeFetch)
            }
            
            if executeFetch {
                Text("NEXTTTT")
                    .onAppear {
                        print("EXECUTEEEE")
//                        executeFetch = false
                    }
            }

        }
        

    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
