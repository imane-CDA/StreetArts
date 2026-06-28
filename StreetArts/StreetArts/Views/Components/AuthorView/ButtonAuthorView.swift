//
//  ArtAuthorButtonListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct ButtonAuthorView: View {

    let author: Author

    var body: some View {

        VStack {

            Link("Site web", destination: URL(string: author.siteWeb)!)
                .font(.caption2.bold())
                .foregroundStyle(.white)
                .frame(width: 136, height: 26)
                .background(
                    Capsule()
                        .fill(.secondOrange)

                )

        }.padding(.top, 23)

    }
}

#Preview {
    ButtonAuthorView(author: Author.mock)
}
