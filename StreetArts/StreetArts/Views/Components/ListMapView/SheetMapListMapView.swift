//
//  ArtDetailSheetView.swift
//  StreetArts
//
//  Created by Apprenant131 on 24/06/2026.
//

import SwiftUI

struct SheetMapListMapView: View {

    let art: Art
    @Binding var mission: Mission  // si tu utilises mission ici
    @Environment(\.dismiss) private var dismiss

    var body: some View {

        NavigationStack {

            VStack(spacing: 16) {

                Image(art.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 179)
                    .opacity(0.6)
                    .clipped()

                VStack(alignment: .leading, spacing: 18) {
                    DescriptionOneArtDetaiView(art: art)
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
                    }
                }

                ToolbarItem(placement: .principal) {
                    Text(art.title)
                        .font(.headline)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        ArtDetailView(
                            art: art,
                            mission: $mission
                        )
                    } label: {
                        Image(systemName: "arrow.right")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        SheetMapListMapView(
            art: Art.mock,
            mission: .constant(Mission.mock)
        )
    }
}
