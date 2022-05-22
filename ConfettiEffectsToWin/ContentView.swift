//
//  ContentView.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - ContentView

struct ContentView: View {
    
    //MARK: Properties
    
    private let screen = UIScreen.main.bounds.size
    
    var body: some View {
        ZStack {
            Sparkle(.topLeading)
            Sparkle(.topTrailing)
            Sparkle(.bottomLeading)
            Sparkle(.bottomTrailing)
            Sparkle(.centerTop)
            Sparkle(.center)
            Sparkle(.centerBottom)
            
            Stencil()
        }
        .background(.black)
        .ignoresSafeArea()
        
    }
}

//MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
