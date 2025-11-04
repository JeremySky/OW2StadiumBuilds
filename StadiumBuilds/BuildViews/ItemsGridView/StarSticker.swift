//
//  StarSticker.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/4/25.
//

import SwiftUI

struct StarSticker: View {
    private let starSize: CGFloat = 24
    
    var body: some View {
        Image(systemName: "star.fill")
            .resizable()
            .scaledToFit()
            .foregroundStyle(Color.accentGold)
            .overlay {
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color.blueDark)
            }
            .frame(width: starSize, height: starSize)
            .offset(x: 14, y: 7)
    }
}

#Preview {
    StarSticker()
}
