//
//  ArtListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtListView: View {

    let arts: [Art]

    @Binding var selectedType: Types?
    @Binding var selectedPicker: SelectionOptions

    var filteredArts: [Art] {
        selectedType == nil ? arts : arts.filter { $0.type == selectedType }
    }

    var body: some View {

        VStack {

            if filteredArts.isEmpty {

                ArtEmptyListView()

            } else {

                List(filteredArts) { art in
                    NavigationLink {
                        ArtDetailView(
                            art: art
                        )
                    } label: {
                        ArtRowListView(art: art)
                    }
                }
                .scrollIndicators(.hidden)

            }
        }
        .navigationTitle("Liste des Street arts")

    }
}

#Preview {
    NavigationStack {
        ArtListView(
            arts: Art.mocks,
            selectedType: .constant(.calligraphie),
            selectedPicker: .constant(.liste)
        )
    }

}
