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
        Map()
    }
}

#Preview {
    TripDestinationsView()
}
