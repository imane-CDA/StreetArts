//
//  ArtListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ListListMapView: View {

    let arts: [Art]
    
    @Binding var mission: Mission
    @Binding var selectedType: Types?
    @Binding var selectedPicker: SelectionOptions

    
    var filteredArts: [Art] {
        selectedType == nil ? arts : arts.filter { $0.type == selectedType }
    }

    var body: some View {

        VStack {

            if filteredArts.isEmpty {

                EmptyListListMapView()

            } else {

                List(filteredArts) { art in
                    NavigationLink {
                        ArtDetailView(
                            art: art,
                            mission: $mission
                        )
                    } label: {
                        RowListListMapView(art: art)
                    }
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .scrollIndicators(.hidden)
            }
        }
        .navigationTitle("Liste des Street arts")

    }
}

#Preview {
    NavigationStack {
        ListListMapView(
            arts: Art.mocks,
            mission: .constant(Mission.mock),
            selectedType: .constant(.calligraphie),
            selectedPicker: .constant(.liste)
        )
    }

}
