//
//  ArtDetailMissionGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct DetailMissionView: View {
    
    let art : Art
    
    var body: some View {

        Text(art.detail)
            .font(.subheadline)
            .foregroundStyle(.secondText)
            .lineLimit(3)

    }
}

#Preview {
    DetailMissionView(art: Art.mock)
}
