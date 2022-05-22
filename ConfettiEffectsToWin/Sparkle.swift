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
            Sparkle(.centerTop)
            Sparkle(.center)
            Sparkle(.centerBottom)
        }
    }
}

//MARK: - Enum

enum DesignSparkle {
    
    case topLeading
    case topTrailing
    case bottonTrailing
    case bottomLeading
    case centerTop
    case center
    case centerBottom
    
    var color: Color {
        switch self {
        case .topLeading: return .red
        case .topTrailing: return .green
        case .bottonTrailing: return .pink
        case .bottomLeading: return .blue
        case .centerTop: return .purple
        case .center: return .yellow
        case .centerBottom: return .cyan
        }
    }
    
    var delay: Double {
        switch self {
        case .topLeading: return 0.5
        case .topTrailing: return 1.0
        case .bottonTrailing: return 0.7
        case .bottomLeading: return 1.3
        case .centerTop: return 0.3
        case .center: return 0.1
        case .centerBottom: return 0.5
        }
    }
    
    var direction: Double {
        switch self {
        case .topLeading: return .random(in: 0...Double.pi / 2)
        case .topTrailing: return .random(in: 0...Double.pi / 2)
        case .bottonTrailing: return .random(in: 0...Double.pi / 2)
        case .bottomLeading: return .random(in: 0...Double.pi / 2)
        case .centerTop: return .random(in: -Double.pi...Double.pi)
        case .center: return .random(in: -Double.pi...Double.pi)
        case .centerBottom: return .random(in: -Double.pi...Double.pi)
        }
    }
    
    var duration: Double {
        self == .center || self == .centerTop || self == .centerBottom ? .random(in: 3...4.5) : 2
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
        case .bottonTrailing: return .init(x: grProxy.size.width, y: grProxy.size.height)
        case .bottomLeading: return .init(x: 0, y: grProxy.size.height)
        case .centerTop: return .init(x: grProxy.size.width / 2 - 100, y: grProxy.size.height / 2 - 70)
        case .center: return .init(x: grProxy.size.width / 2, y: grProxy.size.height / 2)
        case .centerBottom: return .init(x: grProxy.size.width / 2 + 70, y: grProxy.size.height / 2 + 100)
        }
    }
}
