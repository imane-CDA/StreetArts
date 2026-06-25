//
//  ArtRowAuthorsView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct ArtAuthorCardView: View {

    let author: Author

    var body: some View {

        VStack {

            VStack(alignment: .center, spacing: 13) {

                ArtAuthorImageListView(author: author)

                ArtAuthorNameListView(author: author)

                ArtAuthorDescriptionListView(author: author)

                ArtAuthorButtonListView(author: author)
                    .padding(.top, 23)
            }

        }
        .frame(width: 165, height: 235)
        .background(
            Color.white
        )
        .clipShape(RoundedRectangle(cornerRadius: 26))
    }
}

#Preview {
    ArtAuthorCardView(
        author: Author.mock
    )
}
