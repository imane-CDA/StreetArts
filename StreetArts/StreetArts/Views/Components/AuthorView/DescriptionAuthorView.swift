//
//  ArtAuthorDescriptionListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 25/06/2026.
//

import SwiftUI

struct DescriptionAuthorView: View {

    let author: Author

    var body: some View {

        VStack {

            // Age
            HStack {
                Text("Age : ")
                    .bold()

                Text(author.age != nil ? "\(author.age!) ans" : "NC")
            }

            // Origines
            HStack {
                Text("Origines : ")
                    .bold()

                Text(author.origin)
            }

            // Style
            HStack {
                Text("Style : ")
                    .bold()

                Text(author.style.rawValue)
            }

        }.font(.caption2)
    }
}

#Preview {
    DescriptionAuthorView(author: Author.mock)
}
