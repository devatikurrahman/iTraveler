//
//  ContentView.swift
//  iTraveler
//
//  Created by Atikur Rahman on 5/7/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Group {
                TripView()
                    .tabItem {
                        Label("Trips", systemImage: "map")
                    }
                TripDestinationsView()
                    .tabItem {
                        Label("Destinations", systemImage: "globe.desk")
                    }
            }
            .toolbarBackground(.opacity(0.8), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

#Preview {
    HomeView()
}
