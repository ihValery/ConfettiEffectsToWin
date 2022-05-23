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
    
    private let design: DesignSparkle
    
    //MARK: Methods
    
    func body(content: Content) -> some View {
        ForEach(0...80, id: \.self) { index in
            content
                .hueRotation(.degrees(time * 80))
                .scaleEffect(scale)
                .modifier(ConfettiGeometryEffect(time: time, direction: design.direction, radius: design.radius))
                .opacity((design.duration - time) / design.duration)
        }
        .onAppear {
            withAnimation(
                .easeOut(duration: design.duration)
                .repeatForever(autoreverses: false)) {
                    
                    time = design.duration
                    scale = design.scale
                }
        }
    }
    
    //MARK: Initializer
    
    init(_ design: DesignSparkle) {
        self.design = design
    }
}
