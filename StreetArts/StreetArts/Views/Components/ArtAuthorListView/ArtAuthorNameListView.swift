//
//  SwiftUIVArtAuthorNameListViewiew.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct ArtAuthorNameListView: View {

    let author: Author

    var body: some View {

        VStack {

            Text(author.name)
                .font(.callout)
                .foregroundStyle(.mainOrange).bold()
        }
    }
}

#Preview {
    ArtAuthorNameListView(author: Author.mock)
}
