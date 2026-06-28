//
//  NumberMissionView.swift
//  StreetArts
//
//  Created by Apprenant131 on 27/06/2026.
//

import SwiftUI

struct NumberMissionView: View {
    
    let number : Int
    
    var body: some View {
        
        Text("\(number)")
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding(8)
            .background(Color.secondOrange)
            .clipShape(Circle())
    }
}

#Preview {
    NumberMissionView(number: 1)
}
