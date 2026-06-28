//
//  ArtAuthorsGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct AuthorsView: View {

    let authors: [Author]

    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {

        ScrollView {

            VStack {

                LazyVGrid(columns: colums, spacing: 21) {

                    ForEach(authors) {
                        author in
                        CardAuthorView(author: author)
                    }

                }.padding(.horizontal, 22)

            }
        }.background(Color(.backgroundGray))
    }
}

#Preview {
    AuthorsView(authors: Author.mocks)
}
