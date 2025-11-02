//
//  Buff.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/1/25.
//

import Foundation

struct Buff {
    var stat: Stat
    var value: Int
}


enum Stat {
    case weaponPower, weaponLifesteal, attackSpeed, maxAmmo, moveSpeed, increaseDamageToBarriersAndDeployables, criticalDamage
    case abilityPower, abilityLifesteal, cooldownReduction, startingUltimateCharge
    case health, armor, shields, negativeEffectDuration, incomingNegativeEffectDuration, healthArmorShields, knockbackResist, slowResist, meleeDamage
    
    var isPercentage: Bool {
        switch self {
        case .health, .armor, .shields:     false
        default:                            true
        }
    }
}
