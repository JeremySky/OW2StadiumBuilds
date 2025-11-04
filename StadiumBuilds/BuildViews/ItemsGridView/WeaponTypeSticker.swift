//
//  WeaponTypeSticker.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/4/25.
//

import SwiftUI

struct WeaponTypeSticker: View {
    let type: ItemType
    
    init(_ type: ItemType) {
        self.type = type
    }
    
    var body: some View {
        Text(type.rawValue)
            .font(.headline)
            .fontWeight(.heavy)
            .foregroundStyle(Color.accentGold.opacity(0.9))
            .frame(width: 26, height: 26)
            .background(
                Circle()
                    .fill(Color.blueDark)
            )
            .overlay(
                Circle()
                    .stroke(lineWidth: 1)
                    .fill(Color.textPrimary.opacity(0.6)))
    }
}

