//
//  ArtDetailSheetView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct ArtDetailSheetView: View {

    @Environment(\.dismiss) private var dismiss

    let art: Art

    var body: some View {

        NavigationStack {

            VStack(spacing: 16) {

                Image(art.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 405)
                    .frame(height: 179)
                    .opacity(0.6)
                    .clipped()

                VStack(alignment: .leading, spacing: 18) {

                    ArtDetaiDescriptionOneView(art: art)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()

                }

                Spacer()

            }

            .toolbar {

                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundStyle(.secondText)
                    }.tint(.backgroundGray)
                        .buttonStyle(.borderedProminent)
                }

                ToolbarItem(placement: .automatic) {
                    HStack(alignment: .center) {
                        Text(art.title)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                    }
                }

                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        ArtDetailView(art: art)
                    } label: {
                        Image(systemName: "arrow.right")
                            .foregroundStyle(.white)
                    }
                    .tint(.secondOrange)
                    .buttonStyle(.borderedProminent)
                }

            }
        }
    }
}

#Preview {
    NavigationStack {
        ArtDetailSheetView(art: Art.mock)
    }
}
