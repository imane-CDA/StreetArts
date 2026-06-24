//
//  ArtDetailView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtDetailView: View {

    let art: Art

    var body: some View {

        VStack {

            Image(art.image)
                .resizable()
                .scaledToFill()
                .frame(height: 278)
                .frame(width: 411)
                .opacity(0.6)
                .clipped()

            VStack(alignment: .leading, spacing: 18) {
                Text(art.title)
                    .font(.title2.bold())
                    .foregroundStyle(.mainOrange)

                Text(art.detail)
                    .font(.footnote)
                    .fontWeight(.regular)
                    .padding(.trailing, 4)

                ArtDetailRowView(art: art)

                ArtDetailMapView(art: art)
                    .frame(height: 157)
                    .clipShape(RoundedRectangle(cornerRadius: 26))

            }.padding()

        }
        .ignoresSafeArea()

        Spacer()

    }
}

#Preview {
    ArtDetailView(art: Art.mock)
}
