//
//  Stencil.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 22.05.22.
//

import SwiftUI

//MARK: - Stencil Трафарет

struct Stencil: View {
    
    //MARK: Properties
    
    var body: some View {
        Color.clear
            .background(.ultraThinMaterial)
            .mask(inverseMask())
    }
    
    private var maskView: some View {
        Image("Trophy512")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    //MARK: Private Methods
    
    private func inverseMask() -> some View {
        maskView
//            .foregroundColor(.black)
            .background(.white)
            .compositingGroup()
            .luminanceToAlpha()
    }
}

//MARK: - PreviewProvider

struct DemoOne_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Stencil()
                .background(.black)
        }
        //        .frame(height: 100)
//        .previewLayout(.sizeThatFits)
    }
}
