//
//  ContentView.swift
//  ConfettiEffectsToWin
//
//  Created by Валерий Игнатьев on 23.05.22.
//

import SwiftUI

//MARK: - ContentView

struct ContentView: View {
    
    //MARK: Properties
    
    @AppStorage("selectTab") var selectTab: TabBarModel = .left
    
    var body: some View {
        ZStack {
            switch selectTab {
            case .left: Color.teal.opacity(0.5)
            case .sparkles: ConfettiTrophyView()
            case .right: Color.red.opacity(0.5)
            }
            
            TabBarView($selectTab)
        }
//        .ignoresSafeArea()
    }
}

//MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
