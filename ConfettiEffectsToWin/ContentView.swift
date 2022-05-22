//
//  ContentView.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - ContentView

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Sparkle(.red, 0.3, 0)
            Sparkle(.green, 0.9, 100)
            Sparkle(.yellow, 1.4, -100)
            Sparkle(.blue, 2.1, 200)
            Sparkle(.pink, 2.7, -200)
            Sparkle(.purple, 3.5, 50)
        }
    }
}

//MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
