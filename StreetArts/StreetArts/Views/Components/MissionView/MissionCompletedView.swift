//
//  MissionCompletedView.swift
//  StreetArts
//
//  Created by Apprenant131 on 28/06/2026.
//

import SwiftUI

struct MissionCompletedView: View {

    @Environment(\.dismiss) private var dismiss
    
    let mission: Mission
    let onNewMission: () -> Void
    
    
    var body: some View {

        ZStack {

            ConfettiView()

            VStack(spacing: 20) {

                Text("Mission terminée !")
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.center)
                
                Spacer()

                Text("Félicitation ! Vous avez découvert \(mission.discoveredArts.count) oeuvres urbaines")
                    .font(.headline)
                    .foregroundStyle(.secondText)
                    .multilineTextAlignment(.center)


                Image(systemName: "trophy.fill")
                    .font(.system(size: 90))
                    .foregroundStyle(.yellow)
                
                    Spacer()
                
                Button {
                    onNewMission()
                    dismiss()
                } label: {
                    Text("Nouvelle mission")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.secondOrange)
                        .clipShape(Capsule())
                }
                .padding(.horizontal)
            }
            .padding()
        }
        
    }
}

#Preview {
    MissionCompletedView(
        mission: Mission.mock,
        onNewMission: {}
    )
}
