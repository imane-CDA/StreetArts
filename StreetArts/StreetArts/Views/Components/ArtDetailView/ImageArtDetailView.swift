//
//  ArtImageDetailView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct ImageArtDetailView: View {
    
    let art : Art
    
    var body: some View {
        
        Image(art.image)
            .resizable()
            .scaledToFill()
            .frame(height: 278)
            .frame(width: 411)
            .opacity(0.6)
            .clipped()
    }
    
}

#Preview {
    ImageArtDetailView(art: Art.mock)
}
