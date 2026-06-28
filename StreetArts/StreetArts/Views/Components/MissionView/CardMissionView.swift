//
//  ArtAuthorCardView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct CardMissionView: View {

    let art: Art
    let number: Int
    let isDiscovered: Bool

    var body: some View {
        
        VStack(alignment: .leading, spacing: 14) {
            
            NumberMissionView(number: number)
            
            ImageMissionView(art: art)
            
            VStack(alignment: .leading, spacing: 8) {
                
                HStack {
                    
                    TitleMissionView(art: art)
                    
                    Spacer()
                    
                    TypeMissionView(art: art)
                    
                }
                
                DetailMissionView(art: art)
                
            }
            
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 26))
        .padding(.horizontal, 20)

    }
}

#Preview {
    CardMissionView(
        art: Art.mock,
        number: 1,
        isDiscovered: false
    )
}
