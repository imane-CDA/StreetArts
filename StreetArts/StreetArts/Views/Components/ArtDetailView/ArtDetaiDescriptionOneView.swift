//
//  ArtDetaiDescriptionOneView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct ArtDetaiDescriptionOneView: View {

    let art: Art

    var body: some View {

        Text(art.detail)
            .font(.footnote)
            .fontWeight(.regular)
            .padding(.trailing, 4)

    }
}

#Preview {
    ArtDetaiDescriptionOneView(art: Art.mock)
}
