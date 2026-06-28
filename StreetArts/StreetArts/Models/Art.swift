//
//  Arts.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import MapKit
import SwiftUI

// Equatable : compare 2 arts -> Missions
// Hashable : identifier rapidement dans Set
struct Art: Identifiable, Equatable, Hashable {

    let id = UUID()

    let image: String
    let title: String
    let detail: String

    let type: Types
    let condition: Conditions

    let date: Date

    let author: Author

    let adresse: String
    let borough: String
    let city: String
    let latitude: Double
    let longitude: Double

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }

}

enum Types: String, CaseIterable {
    case harlftone = "Harlftone"
    case invaders = "Invaders"
    case mosaiques = "Mosaïques"
    case mural = "Mural"
    case stencil = "Stencil"
    case calligraphie = "Calligraphie"
    case pointillisme = "Pointillisme"
    case aerographe = "Aerographe"
    case globePainter = "Globepainter"
}

enum Conditions: String, CaseIterable {
    case bad = "Mauvaise"
    case good = "Bonne"
    case excellent = "Excellent"
}
