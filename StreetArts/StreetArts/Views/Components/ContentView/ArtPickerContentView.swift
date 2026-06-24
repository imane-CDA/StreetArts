//
//  ArtPickerContentView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct ArtPickerContentView: View {
    
    @State private var selectedPicker: SelectionOptions = .liste
        
    var body: some View {
        List {
            Picker("Selection Options", selection: $selectedPicker) {
                ForEach(SelectionOptions.allCases, id : \.self) {
                    option in
                    Text(option.rawValue)
                    }
                    
                } .pickerStyle(.segmented)
            
            selectedPicker.destination
            
            }
        }
    }

enum SelectionOptions : String, CaseIterable {
    case liste = "Liste"
    case map = "Map"
    
    @ViewBuilder
    var destination : some View {
        switch self {
            case .liste :
                ArtListView(arts: Art.mocks)
            case .map :
                ArtDetailMapView(art : Art.mock)
        }
    }
}



#Preview {
    ArtPickerContentView()
}
