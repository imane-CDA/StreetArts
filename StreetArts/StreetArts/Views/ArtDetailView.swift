//
//  ArtDetailView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtDetailView: View {

    let art: Art

    @Binding var mission: Mission

    var isDiscovered: Bool {
        mission.discoveredArts.contains(art)
    }

    var body: some View {

        VStack {

            ImageArtDetailView(art: art)

            VStack(alignment: .leading, spacing: 18) {

                HStack {

                    TitleArtDetailView(art: art)

                    Spacer()

                    ButtonArtDetailView(
                        art: art,
                        isDiscovered: isDiscovered,
                        mission: $mission
                    )
                }

                DescriptionOneArtDetaiView(art: art)

                DescriptionTwoArtDetaiView(art: art)

                MapArtDetailView(art: art)

                SignedArtDetailView()

            }.padding()

        }
        .ignoresSafeArea()

        Spacer()
    }
}

#Preview {
    ArtDetailView(
        art: Art.mock,
        mission: .constant(Mission.mock)
    )
}
