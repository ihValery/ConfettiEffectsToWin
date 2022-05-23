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
    
    private let speed: Double = .random(in: 0...200)
    
    private let direction: Double
    
    private let radius: Double
    
    private var time: Double
    
    var animatableData: Double {
        get { time }
        set { time = newValue }
    }
    
    //MARK: Initializer
    
    init(time: Double, direction: Double, radius: Double) {
        self.time = time
        self.direction = direction
        self.radius = radius
    }
    
    //MARK: Methods

    func effectValue(size: CGSize) -> ProjectionTransform {
        let xTranslation = speed * cos(direction) * time / radius
        let yTranslation = speed * sin(direction) * time / radius
        let affineTranslation = CGAffineTransform(translationX: xTranslation, y: yTranslation)
        
        return ProjectionTransform(affineTranslation)
    }
}
