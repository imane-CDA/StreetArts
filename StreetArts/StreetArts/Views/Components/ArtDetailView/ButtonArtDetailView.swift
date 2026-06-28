//
//  ButtonArtDetailView.swift
//  StreetArts
//
//  Created by Apprenant131 on 28/06/2026.
//

import SwiftUI

struct ButtonArtDetailView: View {

    let art: Art
    let isDiscovered: Bool
    @Binding var mission: Mission

    var body: some View {
        
        
        Button {
            mission.toggleDiscovery(art: art)
        } label: {
            Text(isDiscovered ? "✓ Découverte" : "À découvrir")
                .font(.callout.weight(.semibold))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 36)
                .background(isDiscovered ? Color.green : Color.secondOrange)
                .clipShape(Capsule())
        }
        .frame(width: 150)
        .animation(.spring(response: 0.4, dampingFraction: 0.7), value: isDiscovered)
    }
}

#Preview {
    ButtonArtDetailView(
        art: Art.mock,
        isDiscovered: false,
        mission: .constant(Mission.mock)
    )
}
