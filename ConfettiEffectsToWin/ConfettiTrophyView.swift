//
//  ConfettiTrophyView.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - ConfettiTrophyView

struct ConfettiTrophyView: View {
    
    //MARK: Properties
    
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

struct ConfettiTrophyView_Previews: PreviewProvider {
    static var previews: some View {
        ConfettiTrophyView()
    }
}
