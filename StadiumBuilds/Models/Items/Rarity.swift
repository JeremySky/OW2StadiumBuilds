import SwiftUI

enum Rarity {
    case common, rare, epic
    
    var color: Color {
        switch self {
        case .common:   .rarityCommon
        case .rare:     .rarityRare
        case .epic:     .rarityEpic
        }
    }
}
