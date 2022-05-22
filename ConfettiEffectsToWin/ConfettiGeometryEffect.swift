//
//  ConfettiGeometryEffect.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - ConfettiGeometryEffect

struct ConfettiGeometryEffect: GeometryEffect {
    
    //MARK: Properties
    
    private let speed: Double = .random(in: 20...200)
    
    private let direction: Double = .random(in: -Double.pi...Double.pi)
    
    private var time: Double
    
    var animatableData: Double {
        get { time }
        set { time = newValue }
    }
    
    //MARK: Initializer
    
    init(_ time: Double) {
        self.time = time
    }
    
    //MARK: Methods

    func effectValue(size: CGSize) -> ProjectionTransform {
        let xTranslation = speed * cos(direction) * time
        let yTranslation = speed * sin(direction) * time
        let affineTranslation = CGAffineTransform(translationX: xTranslation, y: yTranslation)
        
        return ProjectionTransform(affineTranslation)
    }
}
