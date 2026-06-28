//
//  ArtPickerContentView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct ListMapView: View {

    @State private var selectedPicker: SelectionOptions = .liste
    @State private var selectedType: Types?
    @State private var mission: Mission = Mission.mock

    var filteredArts: [Art] {
        let arts = Art.mocks
        guard let selectedType else { return arts }
        return arts.filter { $0.type == selectedType }
    }

    var body: some View {
        VStack {

            destination

        }.toolbar {

            ToolbarItem(placement: .topBarLeading) {
                Picker("Selection Options", selection: $selectedPicker) {
                    ForEach(SelectionOptions.allCases, id: \.self) {
                        option in
                        Text(option.rawValue)

                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 300)
            }

            ToolbarItem(placement: .topBarTrailing) {

                Menu {
                    Button("Tous") {
                        selectedType = nil
                    }

                    ForEach(Types.allCases, id: \.self) { type in
                        Button(type.rawValue) {
                            selectedType = type
                        }
                    }

                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
                .foregroundStyle(.mainText)
            }
        }
        .background(Color(.backgroundGray))
    }

    @ViewBuilder
    var destination: some View {
        switch selectedPicker {
        case .liste:
            ListListMapView(
                arts: filteredArts,
                mission: $mission,
                selectedType: $selectedType,
                selectedPicker: $selectedPicker
            )
        case .map:
            MapListMapView(
                arts: filteredArts,
                mission: $mission
            )
        }
    }
}

enum SelectionOptions: String, CaseIterable {
    case liste = "Liste"
    case map = "Map"

}

#Preview {
    NavigationStack {
        ListMapView()
    }
}
