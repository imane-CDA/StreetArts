//
//  ContentView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ContentView: View {

    @Binding var selectedType: Types?
    @State private var selection : Int = 1

    var body: some View {
                
            VStack {

                TabView (selection: $selection) {
                    
                    // Arts
                    NavigationStack {
                        ArtListView(arts: Art.mocks)
                    }
                    .tabItem { Label("Oeuvres", image: (selection == 1 ? "photo.artframe.circle.orange" : "photo.artframe.circle.black" ))  }.tag(1)
                    
                    
                    // Authors
                    NavigationStack {
                        ArtAuthorListView()
                    }
                    .tabItem { Label("Auteurs", image: (selection == 2 ? "person.circle.orange" : "person.circle.black" )) }.tag(2)
                    
                }
                .tint(.mainOrange)
            }
    }
}

#Preview {
    ContentView(selectedType: .constant(.mosaiques))
}
