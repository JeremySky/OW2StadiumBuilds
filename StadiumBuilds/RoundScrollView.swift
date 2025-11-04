//
//  RoundScrollView.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/3/25.
//

import SwiftUI

struct RoundScrollView: View {
    let numOfRounds: Int = 7
    let round: Int = 1
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(1...numOfRounds, id: \.self) { i in
                    Text("ROUND \(String(i))")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.textPrimary)
                        .kerning(1)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(lineWidth: 0.5)
                                .fill(round == i ? Color.textSecondary : .clear)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 3)
                                .fill(round == i ? Color.accentOrange : .clear)
                        )
                }
            }
            .padding(.vertical, 14)
            .padding(.bottom, 6)
            .padding(.horizontal)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    RoundScrollView()
}
