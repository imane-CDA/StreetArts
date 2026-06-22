//
//  ArtDetailView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtDetailView: View {

    var art: Art

    var body: some View {

        VStack(alignment: .leading) {

            Image(art.image)
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 278)
                .opacity(0.6)
                .clipped()

            VStack(alignment: .leading, spacing: 16) {
                Text(art.title)
                    .font(.title2.bold())

                Text(art.detail)
                    .font(.footnote)
                    .fontWeight(.regular)

            }.padding()

            ArtDetailRowView(art: art)
                .padding(.leading)

        }
        .ignoresSafeArea()

        Spacer()

    }
}

#Preview {
    ArtDetailView(art: Art.mock)
}
