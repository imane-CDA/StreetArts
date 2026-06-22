//
//  ArtListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtListView: View {

    var arts: [Art]

    var body: some View {
        

        // --> à déplacer dans tout le fichier
        ZStack {
            Color.backgroundGray
                .ignoresSafeArea()

            VStack {
                List(arts) { art in

                    NavigationLink {
                        ArtDetailView(art: art)
                    } label: {
                        ArtRowListView(art: art)
                    }

                }.scrollIndicators(.hidden)

            }
            .navigationTitle("Liste des Street arts")
            .ignoresSafeArea()
            .padding(.top, 15)
        }
    }
}

#Preview {
    NavigationStack {
        ArtListView(arts: Art.mocks)
    }
}
