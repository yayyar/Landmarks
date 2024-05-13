//
//  MapView.swift
//  Landmarks
//
//  Created by winlwinoo on 12/05/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    var label: String
    
    var body: some View {
        Map(position: .constant(.region(region))){
            Marker(label, coordinate:coordinate)
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(
        coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        label: "Turtle Rock")
}
