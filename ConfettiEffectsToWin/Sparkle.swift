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
    
    private let design: DesignSparkle
    
    var body: some View {
        GeometryReader { grProxy in
            Image(systemName: "sparkle")
                .font(.title)
                .foregroundColor(design.color)
                .modifier(ParticlesModifier(design))
                .offset(x: design.point(grProxy).x, y: design.point(grProxy).y)
        }
    }
    
    //MARK: Initializer
    
    init(_ design: DesignSparkle) {
        self.design = design
    }
}

//MARK: - PreviewProvider

struct Sparkle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Sparkle(.topLeading)
            Sparkle(.topTrailing)
            Sparkle(.bottomTrailing)
            Sparkle(.bottomLeading)
        }
    }
}

//MARK: - Enum

enum DesignSparkle {
    
    case topLeading
    case topTrailing
    case bottomTrailing
    case bottomLeading
    case centerTop
    case center
    case centerBottom
    
    var color: Color {
        switch self {
        case .topLeading: return .red
        case .topTrailing: return .green
        case .bottomTrailing: return .pink
        case .bottomLeading: return .blue
        case .centerTop: return .purple
        case .center: return .yellow
        case .centerBottom: return .cyan
        }
    }
    
    var direction: Double {
        switch self {
        case .topLeading: return .random(in: 0...Double.pi / 2)
        case .topTrailing: return .random(in: Double.pi / 2...Double.pi)
        case .bottomTrailing: return .random(in: Double.pi...Double.pi * 3 / 2)
        case .bottomLeading: return .random(in: -Double.pi / 2...0)
        
        case .centerTop: return .random(in: -Double.pi...Double.pi)
        case .center: return .random(in: -Double.pi...Double.pi)
        case .centerBottom: return .random(in: -Double.pi...Double.pi)
        }
    }
    
    
    var duration: Double {
        switch self {
        case .topLeading: return 2.0
        case .topTrailing: return 2.4
        case .bottomTrailing: return 2.2
        case .bottomLeading: return 2.1
        case .centerTop: return 5
        case .center: return 4
        case .centerBottom: return 4.5
        }
    }
    
    var radius: Double {
        self == .center || self == .centerTop || self == .centerBottom ? 3 : 1
    }
    
    var scale: Double {
        self == .center || self == .centerTop || self == .centerBottom ? 1 : 4
    }
    
    func point(_ grProxy: GeometryProxy) -> CGPoint {
        switch self {
        case .topLeading: return .init(x: 0, y: 0)
        case .topTrailing: return .init(x: grProxy.size.width, y: 0)
        case .bottomTrailing: return .init(x: grProxy.size.width, y: grProxy.size.height)
        case .bottomLeading: return .init(x: 0, y: grProxy.size.height)
        case .centerTop: return .init(x: grProxy.size.width / 2 - 90, y: grProxy.size.height / 2 - 150)
        case .center: return .init(x: grProxy.size.width / 2, y: grProxy.size.height / 2)
        case .centerBottom: return .init(x: grProxy.size.width / 2 + 40, y: grProxy.size.height / 2 + 120)
        }
    }
}
