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
                        Label("Trips Destination", systemImage: "globe.desk")
                    }
            }
        }
    }
}

#Preview {
    HomeView()
}
