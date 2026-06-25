//
//  ArtPickerContentView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct ArtListMapContentView: View {

    @State var selectedPicker: SelectionOptions = .liste
    @State private var selectedType: Types?
    @State var selectionColor: Int = 0

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
            ArtListView(
                arts: Art.mocks,
                selectedType: $selectedType,
                selectedPicker: $selectedPicker
            )
        case .map:
            ArtMapContentView(
                arts: Art.mocks
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
        ArtListMapContentView(
            selectedPicker: .liste
        )
    }
}
