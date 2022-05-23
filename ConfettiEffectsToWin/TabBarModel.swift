//
//  TabBarModel.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 4.05.22.
//

import SwiftUI

//MARK: - TabBarModel

enum TabBarModel: String {
    
    case left
    case sparkles
    case right
    
    //MARK: Properties

    var text: String {
        switch self {
        case .left: return "Left"
        case .sparkles: return "Sparkles"
        case .right: return "Right"
        }
    }
    
    var icon: String {
        switch self {
        case .left: return "circle.grid.cross.left.filled"
        case .sparkles: return "sparkles"
        case .right: return "circle.grid.cross.right.filled"
        }
    }
    
    var color: Color {
        switch self {
        case .left: return .teal
        case .sparkles: return .blue
        case .right: return .red
        }
    }
}
