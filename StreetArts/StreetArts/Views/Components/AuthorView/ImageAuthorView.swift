//
//  ArtAuthorImageListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct ImageAuthorView: View {

    let author: Author

    var body: some View {

        VStack {

            if let imageNotNil = author.image {

                Image(imageNotNil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())

            } else {

                Image(systemName: "person.slash.fill")
                    .font(.largeTitle)
                    .frame(width: 65, height: 65)
                    .background(
                        Circle()
                            .fill(.backgroundGray)
                    )
            }
        }
    }
}

#Preview {
    ImageAuthorView(author: Author.mock)
}
