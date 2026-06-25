//
//  ArtMapContentView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

// 1
import MapKit
import SwiftUI

struct ArtMapContentView: View {

    let arts: [Art]

    @State private var selectedArt: Art?

    // 2
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 46.8,
            longitude: 2
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 10,
            longitudeDelta: 10
        )
    )

    var body: some View {
        // 3 + (création de la propriété calculée dans la struct) + 4
        Map(
            initialPosition: .region(region)
        ) {
            ForEach(arts) { art in

                // Marker (annotation sinon pas cliquable)
                Annotation(art.title, coordinate: art.coordinate) {
                    Button {
                        selectedArt = art
                    } label: {
                        ZStack(alignment: .bottom) {
                            Image(systemName: "mappin.circle.fill")
                                .font(.title)
                                // permet de gere les différentes couches du sf symbole
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white, .mainOrange)
                                .overlay {
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                }
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 8))
                                .foregroundStyle(.white)
                                .rotationEffect(.degrees(180))
                                .offset(y: 8)
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        // 4 sheet
        .sheet(item: $selectedArt) { art in
            ArtDetailSheetView(art: art)
        }
    }
}

#Preview {
    ArtMapContentView(arts: Art.mocks)
}
