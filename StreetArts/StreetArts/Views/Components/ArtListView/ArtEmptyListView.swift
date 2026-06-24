//
//  ArtEmptyListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 23/06/2026.
//

import SwiftUI

struct ArtEmptyListView: View {
    
    var body: some View {
        
        ZStack {
            Color.backgroundGray

            VStack {
                
                ContentUnavailableView(
                    "Aucun résultat",
                    systemImage: "paintbrush.pointed",
                    description: Text("Aucune œuvre ne correspond au filtre sélectionné.")
                ) .foregroundStyle(.mainOrange)
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
    }
}

#Preview {
    ArtEmptyListView()
}
