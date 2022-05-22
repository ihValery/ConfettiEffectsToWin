//
//  ParticlesModifier.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - ParticlesModifier

struct ParticlesModifier: ViewModifier {
    
    //MARK: Properties
    
    @State private var time: Double = 0
    
    @State private var scale: Double = 0
    
    private let duration: Double = 5
    
    let delay: Double
    
    func body(content: Content) -> some View {
        ForEach(0...80, id: \.self) { index in
            content
                .hueRotation(.degrees(time * 80))
                .scaleEffect(scale)
                .modifier(ConfettiGeometryEffect(time))
                .opacity((duration - time) / duration)
        }
        .onAppear {
            withAnimation(.easeOut(duration: duration).repeatForever(autoreverses: false).delay(delay)) {
                time = duration
                scale = 1
            }
        }
    }
}
