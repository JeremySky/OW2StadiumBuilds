//
//  PowersScrollView.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/3/25.
//

import SwiftUI

struct PowersScrollView: View {
    let powers: [Power?] = [Power(name: "Tokki Slam", description: "During [Boosters], use crouch to slam the ground, dealing damage equal to 25% of your max Armor plus Shield and knocking up enemies hit.", imageString: "Snowball_Flight"), nil, nil, nil]
    
    let powerRoundNumbers: [Int] = [1, 2, 3, 5]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                
                ForEach(0..<4, id: \.self) { i in
                    let length: CGFloat = 120
                    VStack {
                        PowerView(powers[i])
                            .frame(width: length, height: length)
                        Text("ROUND \(powerRoundNumbers[i])")
                            .font(.caption)
                            .fontWeight(.black)
                            .kerning(1)
                            .foregroundStyle(Color.textTertiary)
                    }
                }
            }
            .padding(.horizontal, 18)
            .padding(.bottom, 30)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ZStack {
        Color.blueDark.ignoresSafeArea()
        PowersScrollView()
            .frame(height: 160)
    }
}
