//
//  ArtMissionTypeGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct TypeMissionView: View {

    let art: Art

    var body: some View {

        Text(art.type.rawValue)
            .font(.caption2)
            .fontWeight(.semibold)
            .padding(.horizontal, 8)
            .padding(.vertical, 3)
            .background(.mainOrange.opacity(0.12))
            .foregroundStyle(.mainOrange)
            .clipShape(Capsule())

    }
}

#Preview {
    TypeMissionView(art: Art.mock)
}
