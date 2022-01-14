//
//  SettingView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 06/01/22.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel = SettingViewModel()

    @State var showLocationsheet: Bool = false

    var body: some View {
        List {
            Section {
                Toggle(isOn: $viewModel.useLocationService) {
                    Text("Automatic")
                }
                VStack(alignment: .leading) {
                    Text("Current Location")
                    Text(viewModel.locationName ?? "")
                        .font(.caption2)
                }
            }
            
            if !viewModel.useLocationService {
                Button {
                    showLocationsheet.toggle()
                } label: {
                    Text("Select locations")
                }.sheet(isPresented: $showLocationsheet) {
                    SelectLocationsView(viewModel: viewModel)
                    }

            }

        }
    }
    
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
