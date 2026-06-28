//
//  ArtRowAuthorsView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct CardAuthorView: View {

    let author: Author

    var body: some View {

        VStack(alignment: .center, spacing: 13) {

            ImageAuthorView(author: author)

            NameAuthorView(author: author)

            DescriptionAuthorView(author: author)

            ButtonAuthorView(author: author)
            
        }
        .frame(width: 165, height: 235)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 26))
    }
}


#Preview {
    CardAuthorView(author: Author.mock)
}
