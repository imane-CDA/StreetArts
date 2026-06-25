//
//  ArtDetailMapView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

// pour utiliser les cartes Apple (Map, coordonnées GPS, etc.)
import MapKit
import SwiftUI

struct ArtDetailMapView: View {

    let art: Art

    // propriété calculée qui m'évite de recréer les coordonnées 2 fois
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: art.latitude,
            longitude: art.longitude
        )
    }

    // position --> représente la caméra de la carte (centre + zoom + zone affichée)
    @State private var position: MapCameraPosition

    // Je crée un initialiseur pour pouvoir configurer la carte dès le début.
    init(art: Art) {

        // Je garde l’œuvre reçue dans la vue.
        self.art = art

        // On ne peut pas assigner directement une @State dans init
        // Donc on utilise _position (version “brute” du State)
        _position = State(
            initialValue: .region(
                // MKCoordinateRegion : une région = zone visible sur la carte
                // centre + zoom
                MKCoordinateRegion(
                    // La carte sera centrée sur mon œuvre
                    center: CLLocationCoordinate2D(
                        latitude: art.latitude,
                        longitude: art.longitude
                    ),

                    // petit chiffre --> zoom fort (très proche)
                    // grand chiffre --> zoom éloigné
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.01,
                        longitudeDelta: 0.01
                    )
                )
            )
        )
    }

    var body: some View {

        // affiche une carte Apple
        // liée à position (si la position change --> la carte se met à jour)
        Map(position: $position) {

            // J’ajoute un point sur la carte :
            // art.title --> label du pin
            // coordinate --> position GPS du pin
            Annotation(art.title, coordinate: coordinate) {
                Image(art.image)
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(.primary, lineWidth: 3)
                    )
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 6)

                Image(systemName: "triangle.fill")
                    .font(.system(size: 8))
                    .foregroundStyle(.primary)
                    .rotationEffect(.degrees(180))
                    .offset(y: -4)

            }
        }
    }
}

#Preview {
    ArtDetailMapView(art: Art.mock)
}
