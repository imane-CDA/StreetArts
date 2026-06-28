//
//  SwiftUIVArtAuthorNameListViewiew.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct NameAuthorView: View {

    let author: Author

    var body: some View {

        VStack {

            HStack {
                Text(author.authorName)
                Text(author.authorUserName ?? "")
            }.font(.callout)
                .foregroundStyle(.mainOrange).bold()
            
        }
    }
}

#Preview {
    NameAuthorView(author: Author.mock)
}
