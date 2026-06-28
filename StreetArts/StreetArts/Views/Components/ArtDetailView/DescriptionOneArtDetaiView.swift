//
//  ArtDetaiDescriptionOneView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct DescriptionOneArtDetaiView: View {

    let art: Art

    var body: some View {

        VStack(alignment: .leading) {

            Text(art.detail)
                .font(.footnote)
                .fontWeight(.regular)
                .padding(.trailing, 4)
        }

    }
}

#Preview {
    DescriptionOneArtDetaiView(art: Art.mock)
}
