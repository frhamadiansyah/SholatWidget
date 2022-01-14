//
//  MainView.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 06/01/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabViewStyle(.page)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }.tag(1)
            SettingView()
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape")
                        Text("Setting")
                    }
                }.tag(2)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
