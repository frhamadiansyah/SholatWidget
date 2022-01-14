//
//  SelectLocationsView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 07/01/22.
//

import SwiftUI
import CoreLocation
import MapKit

struct SelectLocationsView: View {
    @ObservedObject var viewModel: SettingViewModel
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Location Search")) {
                    ZStack(alignment: .trailing) {
                        TextField("Search", text: $viewModel.queryFragment)
                                // This is optional and simply displays an icon during an active search
                        if viewModel.status == .isSearching {
                            Image(systemName: "clock")
                                        .foregroundColor(Color.gray)
                        }
                    }
                }
                Section(header: Text("Results")) {
                    List {
                        ForEach(viewModel.results) { completionResult in

                            Button {
                                self.viewModel.selectedLocation = completionResult
                                print("send location \(completionResult.city)")
                                self.presentationMode.wrappedValue.dismiss()
                            } label: {
                                VStack(alignment: .leading) {
                                    Text(completionResult.city)
                                    Text(completionResult.country)
                                        .font(.caption2)
                                }
                            }
 
                        }
                    }
                }
            }
        }
    }
}

struct SelectLocationsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectLocationsView(viewModel: SettingViewModel())
    }
}
