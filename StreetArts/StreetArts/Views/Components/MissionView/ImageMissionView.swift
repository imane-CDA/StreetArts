//
//  ArtMissionImageGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct ImageMissionView: View {
    
    let art : Art
    
    var body: some View {
        
        Image(art.image)
            .resizable()
            .frame(height: 160)
            .frame(maxWidth: .infinity)
            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 26))

    }
}

#Preview {
    ImageMissionView(art: Art.mock)
}
