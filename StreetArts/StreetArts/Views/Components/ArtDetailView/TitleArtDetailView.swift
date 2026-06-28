//
//  ArtTitleDetailView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct TitleArtDetailView: View {
    
    let art: Art
    
    var body: some View {

        Text(art.title)
            .font(.title2.bold())
            .foregroundStyle(.mainOrange)
            .lineLimit(1)

    }
}

#Preview {
    TitleArtDetailView(art: Art.mock)
}
