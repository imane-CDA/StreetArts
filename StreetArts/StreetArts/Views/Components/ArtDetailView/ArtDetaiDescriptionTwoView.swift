//
//  ArtDetailRowView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtDetaiDescriptionTwoView: View {

    let art: Art

    var body: some View {

        VStack(alignment: .leading, spacing: 4) {

            // Type
            HStack(spacing: 0) {
                Text("Type : ")
                    .bold()

                Text(art.type.rawValue)
            }

            // Condition
            HStack(spacing: 0) {
                Text("Condition : ")
                    .bold()

                Text(art.condition.rawValue)
            }

            // Date
            HStack(spacing: 0) {
                Text("Date : ")
                    .bold()

                Text(art.date.formatted(.dateTime.month(.abbreviated).year()))
            }

            // Auteur
            HStack(spacing: 0) {
                Text("Auteur : ")
                    .bold()

                Text("\(art.authorName.uppercased()) ")
                Text("\(art.authorUserName.uppercased())")
            }

            // Localisation
            HStack(spacing: 0) {
                Text("Localisation : ")
                    .bold()

                Text("\(art.adresse), \(art.borough) \(art.city)")
            }

            // Latitude - Longitude
            HStack {
                Text(
                    "(Latitude : \(art.latitude), Longitude : \(art.longitude))"
                )
            }
        }.font(.footnote)

    }

}

#Preview {
    ArtDetaiDescriptionTwoView(
        art: Art.mock
    )
}
