//
//  Colors.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/3/25.
//

import SwiftUI

extension Color {
    // MARK: - Overwatch 2 Color Palette

    // Background Colors
    static let customBlack = Color(red: 14/255, green: 24/255, blue: 46/255)
    static let blueDark = Color(red: 21/255, green: 38/255, blue: 64/255)
    static let blueLight: Color = Color(red: 19/255, green: 172/255, blue: 200/255)

    // Text Colors
    static let textPrimary = Color(red: 255/255, green: 255/255, blue: 255/255)
    static let textSecondary = Color(red: 180/255, green: 206/255, blue: 244/255)
    static let textTertiary = Color(red: 135/255, green: 155/255, blue: 184/255)

    // Card Specific Colors
    static let buildCardBackground: Color = Color.blueDark
    static let buildCardBorder = Color(red: 35/255, green: 66/255, blue: 103/255)
    static let buildSectionalDiv = Color(red: 47/255, green: 72/255, blue: 106/255)
    
    // Rarity Colors
    static let rarityCommon = Color(red: 32/255, green: 155/255, blue: 63/255)
    static let rarityRare = Color(red: 1/255, green: 160/255, blue: 252/255)
    static let rarityEpic = Color(red: 203/255, green: 71/255, blue: 255/255)

    // Accent Colors
    static let accentOrange = Color(red: 255/255, green: 103/255, blue: 29/255)
    static let accentGold = Color(red: 0.95, green: 0.77, blue: 0.22)
}
