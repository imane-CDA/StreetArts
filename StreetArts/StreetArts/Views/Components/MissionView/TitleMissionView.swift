//
//  ArtMissionTitleGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct TitleMissionView: View {
    
    let art: Art
    
    var body: some View {
        Text(art.title)
            .font(.headline)
            .lineLimit(1)
            .foregroundStyle(.mainOrange)
    }
}

#Preview {
    TitleMissionView(art: Art.mock)
}
