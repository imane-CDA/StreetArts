//
//  ArtMissionGridView.swift
//  StreetArts
//
//  Created by Apprenant131 on 26/06/2026.
//

import SwiftUI

struct MissionView: View {
    
    let arts: [Art]
    
    @State private var mission: Mission = .mock
    
    // total des missions
    private var totalCount: Int {
        mission.arts.count
    }
    
    // total mission découverte
    private var discoveredCount: Int {
        mission.discoveredArts.count
    }
    
    // barre de progression
    private var progress: Double {
        guard totalCount > 0 else { return 0 }
        return Double(discoveredCount) / Double(totalCount)
    }
    
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 16) {
                
                Text("\(discoveredCount) / \(totalCount) œuvres découvertes")
                    .font(.headline)
                
                ProgressView(value: progress)
                    .tint(.green)
                
                if mission.isCompleted {
                    
                    MissionCompletedView(
                        mission: mission,
                        onNewMission: {
                            mission = Mission(
                                arts: Mission.generate(from: arts),
                                discoveredArts: []
                            )
                        }
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                } else {
                    
                    ScrollView {
                        
                        VStack(spacing: 24) {
                            
                            ForEach(Array(mission.arts.enumerated()), id: \.offset) { index, art in
                                
                                NavigationLink {
                                    ArtDetailView(art: art, mission: $mission)
                                } label: {
                                    CardMissionView(
                                        art: art,
                                        number: index + 1,
                                        isDiscovered: mission.discoveredArts.contains(art)
                                    )
                                }
                            }
                        }
                        .padding(.vertical, 16)
                    }
                }
            }
            .padding(.horizontal, 20)
            .navigationTitle("Mes missions")
            .background(Color.backgroundGray)
            .onAppear {
                if mission.arts.isEmpty {
                    mission.arts = Mission.generate(from: arts)
                }
            }
        }
    }
}

#Preview {
    MissionView(arts: Art.mocks)
}
