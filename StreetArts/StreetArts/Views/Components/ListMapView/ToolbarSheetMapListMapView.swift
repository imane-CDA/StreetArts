////
////  testView.swift
////  StreetArts
////
////  Created by Apprenant131 on 26/06/2026.
////
//
//import SwiftUI
//
//struct ToolbarSheetMapListMapView: View {
//
//    @Environment(\.dismiss) private var dismiss
//
//    let art: Art
//
//    @State private var mission: Mission = .mock
//
//    var body: some View {
//
//        VStack {
//
//        }
//        .toolbar {
//
//            ToolbarItem(placement: .topBarLeading) {
//                Button {
//                    dismiss()
//                } label: {
//                    Image(systemName: "xmark")
//                        .font(.system(size: 17, weight: .medium))
//                        .foregroundStyle(.secondText)
//                }.tint(.backgroundGray)
//                    .buttonStyle(.borderedProminent)
//            }
//
//            ToolbarItem(placement: .principal) {
//                Text(art.title)
//                    .font(.headline)
//                    .frame(maxWidth: .infinity)
//            }
//
//            ToolbarItem(placement: .topBarTrailing) {
//                NavigationLink {
//                    ArtDetailView(
//                        art: art,
//                        mission: $mission,
//                        onToggleDiscovery: { art in
//                            mission.toggleDiscovery(art: art)
//                        }
//                    )
//                } label: {
//                    Image(systemName: "arrow.right")
//                        .foregroundStyle(.white)
//                }
//                .tint(.secondOrange)
//                .buttonStyle(.borderedProminent)
//            }
//
//        }
//    }
//}
//
//#Preview {
//    ToolbarSheetMapListMapView(art: Art.mock)
//}
