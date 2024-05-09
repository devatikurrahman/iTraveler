//
//  TripDestinationsView.swift
//  iTraveler
//
//  Created by Atikur Rahman on 5/7/24.
//

import SwiftUI
import MapKit

struct TripDestinationsView: View {
    @State private var cameraPosition: MapCameraPosition = .automatic
    var body: some View {
        Map(position: $cameraPosition) {
            //40.752800, -73.977152
            Marker(
                "Grand Central Terminal",
                coordinate: CLLocationCoordinate2D(
                    latitude: 40.752800,
                    longitude: -73.977152
                )
            )
        }
            .onAppear() {
                let newYork = CLLocationCoordinate2D(latitude: 40.712982, longitude: -74.007205);
                let span = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
                let region = MKCoordinateRegion(center: newYork, span: span)
                cameraPosition = .region(region)
            }
    }
}

#Preview {
    TripDestinationsView()
}
