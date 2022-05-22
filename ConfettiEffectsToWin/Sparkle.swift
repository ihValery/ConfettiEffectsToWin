//
//  Sparkle.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - Sparkle

struct Sparkle: View {
    
    //MARK: Properties
    
    private let color: Color
    private let delay: Double
    private let offset: Double

    var body: some View {
        ZStack {
            Image(systemName: "sparkle")
                .font(.title)
                .foregroundColor(color)
                .modifier(ParticlesModifier(delay: delay))
                .offset(x: offset, y: offset)
        }
    }
    
    //MARK: Initializer
    
    init(_ color: Color,_ delay: Double,_ offset: Double) {
        self.color = color
        self.delay = delay
        self.offset = offset
    }
}

//MARK: - PreviewProvider

struct Sparkle_Previews: PreviewProvider {
    static var previews: some View {
        Sparkle(.red, 0.1, 0)
    }
}
