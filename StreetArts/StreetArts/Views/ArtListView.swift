//
//  ArtListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ArtListView: View {
    
    let arts: [Art]
    
    @State private var selectedType: Types? = nil
    
     var filteredArts: [Art] {
        selectedType == nil ? arts : arts.filter { $0.type == selectedType }
    }
    
    var body: some View {
        
        
        VStack {
            
            NavigationStack {
                
                if filteredArts.isEmpty {
                    
                    ArtEmptyListView()
                    
                } else {
                    
                    List(filteredArts) { art in
                        
                        NavigationLink {
                            ArtDetailView(art: art)
                        } label: {
                            ArtRowListView(art: art)
                        }
                        
                    }
                    .scrollIndicators(.hidden)
                    .navigationTitle("Liste des Street arts")
                    .padding(.top, 15)
                    
                    // Toolbar
                    .toolbar {

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
                            } .foregroundStyle(.mainText)
                        }

                    } .background(Color(.backgroundGray))
                }
            }
        }
    }
}


#Preview {
        ArtListView(
            arts: Art.mocks
        )
}
