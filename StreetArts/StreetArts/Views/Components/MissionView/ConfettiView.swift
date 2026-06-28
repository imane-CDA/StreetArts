//
//  ConfettiView.swift
//  StreetArts
//
//  Created by Apprenant131 on 28/06/2026.
//

import SwiftUI

struct ConfettiView: View {

    @State private var animate = false

    let colors: [Color] = [.red, .blue, .yellow, .green, .orange, .purple]

    var body: some View {

        GeometryReader { geo in

            ForEach(0..<30, id: \.self) { i in

                Circle()
                    .fill(colors.randomElement()!)
                    .frame(width: 8, height: 8)
                    .position(
                        x: CGFloat.random(in: 0...geo.size.width),
                        y: animate ? geo.size.height + 50 : -50
                    )
                    .animation(
                        .linear(duration: Double.random(in: 2...4))
                        .repeatForever(autoreverses: false),
                        value: animate
                    )
            }
        }
        .onAppear {
            animate = true
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ConfettiView()
}
