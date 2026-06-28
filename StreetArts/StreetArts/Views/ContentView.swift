//
//  ContentView.swift
//  StreetArts
//
//  Created by Apprenant131 on 22/06/2026.
//

import SwiftUI

struct ContentView: View {

    let arts: [Art]
    let authors: [Author]

    @State private var selection: Int = 1

    var body: some View {

        VStack {

            TabView(selection: $selection) {

                // Arts
                NavigationStack {
                    ListMapView()
                }
                .tabItem {
                    Label(
                        "Oeuvres",
                        image: (selection == 1
                            ? "photo.artframe.circle.orange"
                            : "photo.artframe.circle.black")
                    )
                }.tag(1)

                // Authors
                NavigationStack {
                    AuthorsView(authors: authors)
                }
                .tabItem {
                    Label(
                        "Auteurs",
                        image: (selection == 2
                            ? "person.circle.orange" : "person.circle.black")
                    )
                }.tag(2)

                
                // Missions
                NavigationStack {
                    MissionView(arts: arts)
                }
                .tabItem {
                    Label(
                        "Missions",
                        image: (selection == 3
                            ? "star.circle.orange"
                            : "star.circle.black")
                    )
                }.tag(3)
                
            } .tint(.mainOrange)
        }
    }
}

#Preview {
    ContentView(
        arts: Art.mocks,
        authors: Author.mocks
    )
}
