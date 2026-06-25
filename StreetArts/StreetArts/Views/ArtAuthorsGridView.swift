//
//  ArtAuthorsGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct ArtAuthorsGridView: View {

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
                        ArtAuthorCardView(author: author)
                    }

                }.padding(.horizontal, 22)

            }
        }.background(Color(.backgroundGray))

    }
}

#Preview {
    ArtAuthorsGridView(authors: Author.mocks)
}
