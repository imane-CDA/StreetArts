//
//  ArtEmptyListView.swift
//  StreetArts
//
//  Created by Apprenant131 on 23/06/2026.
//

import SwiftUI

struct EmptyListListMapView: View {

    var body: some View {

        ZStack {
            Color.backgroundGray
                .ignoresSafeArea()

            VStack(spacing: 24) {

                Spacer()

                VStack(spacing: 16) {

                    ZStack {
                        Circle()
                            .fill(Color.mainOrange.opacity(0.15))
                            .frame(width: 90, height: 90)

                        Image(systemName: "paintbrush.pointed")
                            .font(.system(size: 40, weight: .semibold))
                            .foregroundStyle(.mainOrange)
                    }

                    Text("Aucune œuvre trouvée")
                        .font(.title3)
                        .bold()

                    
                    Text("Aucune œuvre ne correspond au filtre sélectionné.\nEssayez de modifier vos critères.")
                        .font(.callout)
                        .foregroundStyle(.secondText)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 24)
                }
                .padding(28)
                .frame(maxWidth: .infinity)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(
                    color: .black.opacity(0.08),
                    radius: 10, x: 0, y: 5
                )

                Spacer()
            }
            .padding(.horizontal, 20)
        }
    }
}



#Preview {
    EmptyListListMapView()
}
