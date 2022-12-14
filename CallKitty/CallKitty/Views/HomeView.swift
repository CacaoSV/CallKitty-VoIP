//
//  ContentView.swift
//  CallKitty
//
//  Created by Oscar Castillo on 11/6/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            CallManagerView()
                .tabItem {
                    Label("Call", systemImage: "phone")
                }
        }        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
