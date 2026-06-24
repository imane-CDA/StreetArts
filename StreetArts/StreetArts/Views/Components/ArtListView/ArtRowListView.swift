//
//  ArtRowListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtRowListView: View {

    let art: Art

    var body: some View {

        VStack {

            HStack {
                Image(art.image)
                    .resizable()
                    .frame(maxWidth: 60)
                    .frame(maxHeight: 60)
                    .clipShape(Capsule())

                VStack(alignment: .leading) {
                    Text(art.title)
                        .font(.body)

                    HStack(spacing: 4) {
                        Image(systemName: "mappin.circle.fill")
                        Text(art.city)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondText)

                }

            }

        }.padding()

    }
}

#Preview {
    ArtRowListView(art: Art.mock)
}
