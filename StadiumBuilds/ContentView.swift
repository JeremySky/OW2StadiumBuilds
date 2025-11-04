//
//  ContentView.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/1/25.
//

import SwiftUI

struct Power: Identifiable {
    let name: String
    let description: String
    let imageString: String
    var id: String { self.name }
}

enum GameMode: String, CaseIterable, Identifiable {
    case quickPlay = "⚡️5"
    case competitive = "🏆7"
    
    var id: String { self.rawValue }
}

struct ContentView: View {
    @State var selectedGameMode: GameMode = .quickPlay
    
    
    var body: some View {
        VStack {
//            BuildHeader()
            
            
            BuildOverview()
            RoundScrollView()
            
//            Picker("Game Mode", selection: $selectedGameMode) {
//                ForEach(GameMode.allCases) { mode in
//                    Text(mode.rawValue)
//                }
//            }
//            .pickerStyle(.segmented)
        }
        .padding()
        
    }
    
}

#Preview {
    ZStack {
        Color.blueDark.ignoresSafeArea()
        ContentView()
    }
}
