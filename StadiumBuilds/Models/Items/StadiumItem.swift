//
//  Item.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/1/25.
//

import Foundation

struct StadiumItem: Identifiable {
    let name: String
    let hero: Hero?
    let imageString: String
    let type: ItemType
    let buffs: [Buff]
    let description: String
    let rarity: Rarity
    let cost: Int
    var important: Bool = false
    var notes: String = ""
    
    var id: String { self.name }
    
//    // Weapon Items
//    static let weaponCommon: [StadiumItem] = [
//        StadiumItem(name: "Compensator", hero: nil, imageString: "Compensator", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 5)], description: "", rarity: .common, cost: 1000),
//        StadiumItem(name: "Plasma Converter", hero: nil, imageString: "Plasma_Converter", type: .weapon, buffs: [Buff(stat: .weaponLifesteal, value: 10)], description: "", rarity: .common, cost: 1000),
//        StadiumItem(name: "Weapon Grease", hero: nil, imageString: "Weapon_Grease", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 5)], description: "", rarity: .common, cost: 1000),
//        StadiumItem(name: "Ammo Reserves", hero: nil, imageString: "Ammo_Reserves", type: .weapon, buffs: [Buff(stat: .maxAmmo, value: 20)], description: "", rarity: .common, cost: 1500),
//        StadiumItem(name: "Frenzy Amplifier", hero: nil, imageString: "Frenzy_Amplifier", type: .weapon, buffs: [], description: "Eliminations grant 10% Attack Speed and 15% Move Speed for 3s.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Stratosphere Beacon", hero: nil, imageString: "Stratosphere_Beacon", type: .weapon, buffs: [Buff(stat: .health, value: 25)], description: "Damage to airborne targets above 3m deals 10 bonus damage and slows the enemy by 25% for 3s (15s Cooldown)", rarity: .common, cost: 1500)
//    ]
//    
//    static let weaponRare: [StadiumItem] = [
//        StadiumItem(name: "Aftermarket Firing Pin", hero: nil, imageString: "Aftermarket_Firing_Pin", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 10), Buff(stat: .moveSpeed, value: 5)], description: "", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Advanced Nanobiotics", hero: nil, imageString: "Advanced_Nanobiotics", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 5)], description: "After healing an ally, gain 10% Attack Speed for 3s.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Shieldbuster", hero: nil, imageString: "Shieldbuster", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 5)], description: "After dealing damage to Shields or Armor, gain 15% Attack Speed for 1s.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Stockpile", hero: nil, imageString: "Stockpile", type: .weapon, buffs: [Buff(stat: .health, value: 10), Buff(stat: .attackSpeed, value: 5), Buff(stat: .maxAmmo, value: 25)], description: "", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Emergency Chip", hero: nil, imageString: "Emergency_Chip", type: .weapon, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .weaponPower, value: 5)], description: "Once per life, when you are below 150 Life, gain 15% Weapon Lifesteal and 50 Overhealth for 5s", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Technoleech", hero: nil, imageString: "Technoleech", type: .weapon, buffs: [Buff(stat: .health, value: 25), Buff(stat: .attackSpeed, value: 5), Buff(stat: .weaponLifesteal, value: 10)], description: "", rarity: .rare, cost: 4500),
//        StadiumItem(name: "Icy Coolant", hero: nil, imageString: "Icy_Coolant", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "", rarity: .rare, cost: 5500),
//        StadiumItem(name: "Talon Modification Module", hero: nil, imageString: "Talon_Modification_Module", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 15)], description: "", rarity: .rare, cost: 6000)
//    ]
//    
//    static let weaponEpic: [StadiumItem] = [
//        StadiumItem(name: "Aerial Distresser", hero: nil, imageString: "Aerial Distresser", type: .weapon, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .attackSpeed, value: 10)], description: "Weapon damage to airborne enemies deal 25% bonus damage over 3s.", rarity: .epic, cost: 9000),
//        StadiumItem(name: "Codebreaker", hero: nil, imageString: "Codebreaker", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 15)], description: "Ignore 50% of Armor's damage reduction.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Salvaged Slugs", hero: nil, imageString: "Salvaged_Slugs", type: .weapon, buffs: [Buff(stat: .health, value: 25), Buff(stat: .attackSpeed, value: 10), Buff(stat: .increaseDamageToBarriersAndDeployables, value: 30)], description: "Dealing Weapon Damage to Barriers or Deployables has a 50% chance to restore 1 ammo.", rarity: .epic, cost: 9000),
//        StadiumItem(name: "Volskaya Ordnance", hero: nil, imageString: "Volskaya_Ordnance", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 10)], description: "Deal 5% increased Weapon Damage for every 100 Max Life the target has more than you, up to 25%.", rarity: .epic, cost: 9500),
//        StadiumItem(name: "Weapon Jammer", hero: nil, imageString: "Weapon_Jammer", type: .weapon, buffs: [Buff(stat: .armor, value: 25), Buff(stat: .weaponPower, value: 10)], description: "Dealing Weapon Damage negates 10% of the target's bonus Attack Speed and increases your Attack Speed by 10% for 2s.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Amari's Antidote", hero: nil, imageString: "Amari's_Antidote", type: .weapon, buffs: [Buff(stat: .health, value: 25), Buff(stat: .weaponPower, value: 15)], description: "While healing an ally below 50% Life with your weapon, deal 15% increased Weapon Healing.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Commander's Clip", hero: nil, imageString: "Commander's_Clip", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 10), Buff(stat: .maxAmmo, value: 40)], description: "When you use an ability or gadgets, restore 10% of your Max Ammo.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Booster Jets", hero: nil, imageString: "Booster Jets", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 20)], description: "When you use an ability or gadgets, gain 10% Move Speed for 2s.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "El-Sa'ka Suppressor", hero: nil, imageString: "El-Sa'ka_Suppressor", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 10)], description: "Critical Hits apply 30% Healing Reduction to the target for 2s.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Hardlight Accelerator", hero: nil, imageString: "Hardlight Accelerator", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 10), Buff(stat: .cooldownReduction, value: 10)], description: "When you use an ability or gadgets, gain 5% Weapon Power for 3s, stacking up to 3 times.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "The Closer", hero: nil, imageString: "The Closer", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 20), Buff(stat: .criticalDamage, value: 10)], description: "Critical Hits reveal the target for 3s.", rarity: .epic, cost: 14500),
//        StadiumItem(name: "Eye of the Spider", hero: nil, imageString: "Eye of the Spider", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 25)], description: "Deal 10% increased damage to enemies below 30% Life.", rarity: .epic, cost: 14000)
//    ]
//    
//    // Ability Items
//    static let abilityCommon: [StadiumItem] = [
//        StadiumItem(name: "Charged Plating", hero: nil, imageString: "Charged_Plating", type: .ability, buffs: [], description: "After you spend your Ultimate Charge, gain 25 Armor and 10% Ability Power for the rest of the round.", rarity: .common, cost: 1000),
//        StadiumItem(name: "Power Playbook", hero: nil, imageString: "Power Playbook", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10)], description: "", rarity: .common, cost: 1000),
//        StadiumItem(name: "Shady Spectacles", hero: nil, imageString: "Shady_Spectacles", type: .ability, buffs: [Buff(stat: .abilityLifesteal, value: 10)], description: "", rarity: .common, cost: 1000),
//        StadiumItem(name: "Winning Attitude", hero: nil, imageString: "Winning Attitude", type: .ability, buffs: [Buff(stat: .health, value: 25)], description: "When you die, gain 15% Ultimate Charge.", rarity: .common, cost: 1500)
//    ]
//    
//    static let abilityRare: [StadiumItem] = [
//        StadiumItem(name: "Custom Stock", hero: nil, imageString: "Custom Stock", type: .ability, buffs: [Buff(stat: .health, value: 10), Buff(stat: .weaponPower, value: 5), Buff(stat: .abilityPower, value: 10)], description: "", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Biolight Overflow", hero: nil, imageString: "Biolight Overflow", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 5)], description: "When you spend your Ultimate Charge, cleanse yourself and grant nearby allies 75 Overhealth for 3s.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Energized Bracers", hero: nil, imageString: "Energized Bracers", type: .ability, buffs: [Buff(stat: .health, value: 10), Buff(stat: .abilityPower, value: 10), Buff(stat: .abilityLifesteal, value: 10)], description: "", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Junker Whatchamajig", hero: nil, imageString: "Junker Whatchamajig", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .startingUltimateCharge, value: 25)], description: "", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Skyline Nanites", hero: nil, imageString: "Skyline Nanites", type: .ability, buffs: [Buff(stat: .abilityLifesteal, value: 10)], description: "Ability damage to airborne enemies deal 20% bonus damage over 2s", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Wrist Wraps", hero: nil, imageString: "Wrist Wraps", type: .ability, buffs: [Buff(stat: .health, value: 10), Buff(stat: .abilityPower, value: 5), Buff(stat: .attackSpeed, value: 10)], description: "", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Multi-Tool", hero: nil, imageString: "Multi-tool", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "", rarity: .rare, cost: 4500),
//        StadiumItem(name: "Vitality Amplifier", hero: nil, imageString: "Vitality Amplifier", type: .ability, buffs: [Buff(stat: .shields, value: 25)], description: "While above 50% Life gain 10% Ability Power. Otherwise, gain 15% Ability Lifesteal and abilities refresh 10% faster.", rarity: .rare, cost: 5000),
//        StadiumItem(name: "Nano Cola", hero: nil, imageString: "Nano Cola Item", type: .ability, buffs: [Buff(stat: .abilityPower, value: 20)], description: "", rarity: .rare, cost: 6000)
//    ]
//    
//    static let abilityEpic: [StadiumItem] = [
//        StadiumItem(name: "Sonic Recharger", hero: nil, imageString: "Sonic_Recharger", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 10)], description: "Passive Life Regeneration can overheal up to 75.", rarity: .epic, cost: 9000),
//        StadiumItem(name: "Biotech Maximizer", hero: nil, imageString: "Biotech Maximizer", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 10)], description: "When you use an ability that heals, reduce its cooldown by 5% for each unique ally it heals.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Catalytic Crystal", hero: nil, imageString: "Catalytic Crystal", type: .ability, buffs: [Buff(stat: .abilityPower, value: 15)], description: "Ability Damage and Healing grants 20% more Ultimate Charge.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Lumérico Fusion Drive", hero: nil, imageString: "Lumérico_Fusion_Drive", type: .ability, buffs: [Buff(stat: .armor, value: 50), Buff(stat: .abilityPower, value: 15)], description: "When you use an ability or gadgets, restore 50 Armor or Shields over 3s.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Superflexor", hero: nil, imageString: "Superflexor", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .weaponPower, value: 10)], description: "When you deal Weapon Damage or Healing, gain 5% Ability Power for 3s, stacking up to 5 times.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Cybervenom", hero: nil, imageString: "Cybervenom", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "Dealing Ability damage applies 30% healing reduction for 2s.", rarity: .epic, cost: 10500),
//        StadiumItem(name: "Three-Tap Tommygun", hero: nil, imageString: "Three-tap_Tommygun", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10), Buff(stat: .attackSpeed, value: 10)], description: "After using an ability or gadgets, for 3 seconds Weapon Damage deals additional damage equal to 1% of the target's Life. (0.25s Cooldown).", rarity: .epic, cost: 9500),
//        StadiumItem(name: "Iridescent Iris", hero: nil, imageString: "Iridescent_Iris", type: .ability, buffs: [Buff(stat: .abilityPower, value: 20), Buff(stat: .cooldownReduction, value: 10)], description: "After spending your Ultimate Charge, gain 100 Overhealth for 3s.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Liquid Nitrogen", hero: nil, imageString: "Liquid Nitrogen", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 10)], description: "Dealing Ability Damage slows the target's Move Speed by 10% and their bonus Move Speed by 15% for 3s.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Mark of the Kitsune", hero: nil, imageString: "Mark_of_the_Kitsune", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10)], description: "When you use an ability or gadgets, your next instance of Weapon Damage or Healing deals bonus damage or healing.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Champion's Kit", hero: nil, imageString: "Champion's Kit", type: .ability, buffs: [Buff(stat: .abilityPower, value: 35)], description: "", rarity: .epic, cost: 14000)
//    ]
//    
//    // Survival Items
//    static let survivalCommon: [StadiumItem] = [
//        StadiumItem(name: "Ballistic Buffer", hero: nil, imageString: "Ballistic_Buffer", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "After taking damage beyond 20m, gain 50 overhealth for 3s (15s cooldown)", rarity: .common, cost: 1000),
//        StadiumItem(name: "Electrolytes", hero: nil, imageString: "Electrolytes", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "At the start of the round and every time you respawn, gain 100 unrecoverable Overhealth.", rarity: .common, cost: 1000),
//        StadiumItem(name: "Field Rations", hero: nil, imageString: "Field Rations", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "While on the Objective, restore 8 Life every 1s.", rarity: .common, cost: 1000),
//        StadiumItem(name: "Running Shoes", hero: nil, imageString: "Running Shoes", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "At the start of the round and when you respawn while not in Overtime, gain 30% Move Speed for 10s while out of combat.", rarity: .common, cost: 1000),
//        StadiumItem(name: "Adrenaline Shot", hero: nil, imageString: "Adrenaline Shot", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "Health Packs grant 20% Move Speed for 5s and 50 Overhealth.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Armored Vest", hero: nil, imageString: "Armored Vest", type: .survival, buffs: [Buff(stat: .armor, value: 25)], description: "", rarity: .common, cost: 1500),
//        StadiumItem(name: "First Aid Kit", hero: nil, imageString: "First Aid Kit", type: .survival, buffs: [Buff(stat: .shields, value: 25)], description: "Reduce the time before your Life begins regenerating by 33%.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Reflex Coating", hero: nil, imageString: "Reflex_Coating", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "When you are stunned, slept, hindered or anti-healed, gain 75 Overhealth for 3s (20s Cooldown).", rarity: .common, cost: 1500),
//        StadiumItem(name: "Siphon Gloves", hero: nil, imageString: "Siphon Gloves", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "[Quick Melee] damage heals for 25 Life.", rarity: .common, cost: 1500)
//    ]
//    
//    static let survivalRare: [StadiumItem] = [
//        StadiumItem(name: "Cushioned Padding", hero: nil, imageString: "Cushioned Padding", type: .survival, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .negativeEffectDuration, value: -40)], description: "When affected by Stun, Sleep, or Hinder, restore 10% of your max Life over 3s.", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Iron Eyes", hero: nil, imageString: "Iron Eyes", type: .survival, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .moveSpeed, value: 5)], description: "You take 20% reduced damage from Critical Hits.", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Reinforced Titanium", hero: nil, imageString: "Reinforced Titanium", type: .survival, buffs: [Buff(stat: .shields, value: 25)], description: "While you have Shields, take 15% reduced Ability Damage and gain 5% Ability Power.", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Vishkar Condensor", hero: nil, imageString: "Vishkar Condensor", type: .survival, buffs: [Buff(stat: .shields, value: 25)], description: "Convert 150 Health into Shields.", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Bloodbound", hero: nil, imageString: "Bloodbound", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "The last enemy to deal a final blow to you is Revealed when nearby. Deal 10% more damage to them and take 10% reduced damage from them.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Ironclad Exhaust Ports", hero: nil, imageString: "Ironclad Exhaust Ports", type: .survival, buffs: [Buff(stat: .health, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "When you use an ability or gadgets, gain 25 Overhealth for 3s.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Vital-E-Tee", hero: nil, imageString: "Vital-e-Tee", type: .survival, buffs: [Buff(stat: .armor, value: 10)], description: "Convert 100 Health into Armor.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Crusader Hydraulics", hero: nil, imageString: "Crusader Hydraulics", type: .survival, buffs: [Buff(stat: .armor, value: 25)], description: "While you have Armor, take 10% reduced Weapon Damage and gain 5% Attack Speed.", rarity: .rare, cost: 4500),
//        StadiumItem(name: "Meka Z-Series", hero: nil, imageString: "Meka-Z Series", type: .survival, buffs: [Buff(stat: .healthArmorShields, value: 8)], description: "", rarity: .rare, cost: 5000)
//    ]
//    
//    static let survivalEpic: [StadiumItem] = [
//        StadiumItem(name: "Geneticist's Vial", hero: nil, imageString: "Geneticist's Vial", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "The first time you would die each round, revive instead with 250 Life after 3s.", rarity: .epic, cost: 9000),
//        StadiumItem(name: "Divine Intervention", hero: nil, imageString: "Divine Intervention", type: .survival, buffs: [Buff(stat: .shields, value: 50)], description: "When you take more than 150 pre-mitigation damage at once, gain Overhealth equal to 20% of damage taken for 3s and start regenerating your Shields.", rarity: .epic, cost: 9500),
//        StadiumItem(name: "Overdrive Core", hero: nil, imageString: "Overdrive_Core", type: .survival, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .weaponPower, value: 10)], description: "Once per life, if you take damage that would reduce you below 30% Max Life, first gain 300 decaying Overhealth.", rarity: .epic, cost: 9500),
//        StadiumItem(name: "Gloomgauntlet", hero: nil, imageString: "Gloomgauntlet", type: .survival, buffs: [Buff(stat: .armor, value: 50), Buff(stat: .meleeDamage, value: 15)], description: "[Melee] damage grants 10% Move Speed and restores 5% of Max Life over 2s.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Martian Mender", hero: nil, imageString: "Martian Mender", type: .survival, buffs: [Buff(stat: .health, value: 25), Buff(stat: .cooldownReduction, value: 10)], description: "Restore 3% of your Life every 1s.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Phantasmic Flux", hero: nil, imageString: "Phantasmic Flux", type: .survival, buffs: [Buff(stat: .weaponPower, value: 10), Buff(stat: .abilityPower, value: 10), Buff(stat: .weaponLifesteal, value: 15), Buff(stat: .abilityLifesteal, value: 15)], description: "While at full Life, Lifesteal grants up to 100 Overhealth.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Rüstung von Wilhelm", hero: nil, imageString: "Rüstung von Wilhelm", type: .survival, buffs: [Buff(stat: .healthArmorShields, value: 15)], description: "While below 30% Life, gain 10% Damage Reduction.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Vanadium Injection", hero: nil, imageString: "Vanadium Injection", type: .survival, buffs: [Buff(stat: .shields, value: 50)], description: "While at 100% Ultimate Charge, gain: 50 Health, 10% Weapon Power, 10% Ability Power, 10% Attack Speed, 10% Cooldown Reduction, 10% Move Speed", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Nebula Conduit", hero: nil, imageString: "Nebula Conduit", type: .survival, buffs: [Buff(stat: .health, value: 50), Buff(stat: .weaponPower, value: 5)], description: "Prevent 15% of incoming damage and instead take that prevented damage over 3s.", rarity: .epic, cost: 11000),
//        StadiumItem(name: "Ogundimu Reduction Field", hero: nil, imageString: "Ogundimu Reduction Field", type: .survival, buffs: [Buff(stat: .armor, value: 50)], description: "When you take damage, gain 0.5% damage reduction for 1s, stacking up to 20 times.", rarity: .epic, cost: 11000)
//    ]
//    
//    // Gadgets
//    static let gadgetsCommon: [StadiumItem] = [
//        StadiumItem(name: "Aura Repellant", hero: nil, imageString: "Aura_Repellant", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Knockback all enemies within 8m.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Barrier Snippet", hero: nil, imageString: "Barrier_Snippet", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Gain 50 Overhealth for 3s.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Exo Springs", hero: nil, imageString: "Exo_Springs", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "Holding Crouch increases the height of your next jump by up to 250%.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Exo Springs", hero: nil, imageString: "Exo_Springs", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "Holding Crouch increases the height of your next jump by up to 250%.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Feathered Soles", hero: nil, imageString: "Feathered_Soles", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Gain 25% Move Speed for 5s. Dealing damage removes this bonus.", rarity: .common, cost: 1500),
//        StadiumItem(name: "Med Kit", hero: nil, imageString: "Med_Kit", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Restore 20 Life every 1s for 10s. Taking damage removes this bonus.", rarity: .common, cost: 1500)
//    ]
//    
//    static let gadgetsRare: [StadiumItem] = [
//        StadiumItem(name: "Dashing Skates", hero: nil, imageString: "Dashing_Skates", type: .gadgets, buffs: [Buff(stat: .health, value: 25), Buff(stat: .moveSpeed, value: 5)], description: "On Use: Dash a short distance.", rarity: .rare, cost: 3750),
//        StadiumItem(name: "Field Support", hero: nil, imageString: "Field_Support", type: .gadgets, buffs: [Buff(stat: .armor, value: 25), Buff(stat: .weaponPower, value: 5)], description: "On Use: Place a Biotic Field at your location that restores 50 Life every 1s for 5s.", rarity: .rare, cost: 4000),
//        StadiumItem(name: "Kitsune Snippet", hero: nil, imageString: "Kitsune_Snippet", type: .gadgets, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .cooldownReduction, value: 5)], description: "On Use: Gain 50 Overhealth and 25% Move Speed for 3s. If you are debuffed, gain an additional 100 Overhealth.", rarity: .rare, cost: 4000)
//    ]
//    
//    static let gadgetsEpic: [StadiumItem] = [
//        StadiumItem(name: "Kitsune Charm", hero: nil, imageString: "Kitsune_Charm", type: .gadgets, buffs: [Buff(stat: .shields, value: 50), Buff(stat: .incomingNegativeEffectDuration, value: -40)], description: "On Use: Cleanse yourself of most negative effects, restore 75 Life, and gain Invulnerability and 75% Move Speed for 0.65s.", rarity: .epic, cost: 9000),
//        StadiumItem(name: "Jet Skates", hero: nil, imageString: "Jet_Skates", type: .gadgets, buffs: [Buff(stat: .health, value: 25), Buff(stat: .weaponPower, value: 10), Buff(stat: .abilityPower, value: 10)], description: "On Use: Dash a short distance.", rarity: .epic, cost: 9500),
//        StadiumItem(name: "Necrotic Repellant", hero: nil, imageString: "Necrotic_Repellant", type: .gadgets, buffs: [Buff(stat: .shields, value: 50), Buff(stat: .abilityPower, value: 15)], description: "On Use: Knockback and slow all enemies within 8m and apply 30% Healing Reduction for 5s.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Super Serum", hero: nil, imageString: "Super_Serum", type: .gadgets, buffs: [Buff(stat: .health, value: 25), Buff(stat: .attackSpeed, value: 10), Buff(stat: .weaponLifesteal, value: 10)], description: "On Use: Increase your total Attack Speed by 50% but deal 15% reduced Weapon Damage and Healing for 5s. Reload all your Ammo.", rarity: .epic, cost: 10000),
//        StadiumItem(name: "Colossus Core", hero: nil, imageString: "Colossus_Core", type: .gadgets, buffs: [Buff(stat: .healthArmorShields, value: 10), Buff(stat: .knockbackResist, value: 40), Buff(stat: .slowResist, value: 40)], description: "On Use: Gain Unstoppable, 25% Damage Reduction, 25% Max Life, and grow in size, but deal 25% reduced damage and healing for 3s.", rarity: .epic, cost: 9500),
//        StadiumItem(name: "Refresher", hero: nil, imageString: "Refresher", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "Reduce all Ability cooldowns by 8s.", rarity: .epic, cost: 13000)
//    ]
}

extension StadiumItem {
    // MARK: - Weapon Common

    static let compensator = StadiumItem(name: "Compensator", hero: nil, imageString: "Compensator", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 5)], description: "", rarity: .common, cost: 1000)

    static let plasmaConverter = StadiumItem(name: "Plasma Converter", hero: nil, imageString: "Plasma_Converter", type: .weapon, buffs: [Buff(stat: .weaponLifesteal, value: 10)], description: "", rarity: .common, cost: 1000)

    static let weaponGrease = StadiumItem(name: "Weapon Grease", hero: nil, imageString: "Weapon_Grease", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 5)], description: "", rarity: .common, cost: 1000)

    static let ammoReserves = StadiumItem(name: "Ammo Reserves", hero: nil, imageString: "Ammo_Reserves", type: .weapon, buffs: [Buff(stat: .maxAmmo, value: 20)], description: "", rarity: .common, cost: 1500)

    static let frenzyAmplifier = StadiumItem(name: "Frenzy Amplifier", hero: nil, imageString: "Frenzy_Amplifier", type: .weapon, buffs: [], description: "Eliminations grant 10% Attack Speed and 15% Move Speed for 3s.", rarity: .common, cost: 1500)

    static let stratosphereBeacon = StadiumItem(name: "Stratosphere Beacon", hero: nil, imageString: "Stratosphere_Beacon", type: .weapon, buffs: [Buff(stat: .health, value: 25)], description: "Damage to airborne targets above 3m deals 10 bonus damage and slows the enemy by 25% for 3s (15s Cooldown)", rarity: .common, cost: 1500)

    // MARK: - Weapon Rare

    static let aftermarketFiringPin = StadiumItem(name: "Aftermarket Firing Pin", hero: nil, imageString: "Aftermarket_Firing_Pin", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 10), Buff(stat: .moveSpeed, value: 5)], description: "", rarity: .rare, cost: 3750)

    static let advancedNanobiotics = StadiumItem(name: "Advanced Nanobiotics", hero: nil, imageString: "Advanced_Nanobiotics", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 5)], description: "After healing an ally, gain 10% Attack Speed for 3s.", rarity: .rare, cost: 4000)

    static let shieldbuster = StadiumItem(name: "Shieldbuster", hero: nil, imageString: "Shieldbuster", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 5)], description: "After dealing damage to Shields or Armor, gain 15% Attack Speed for 1s.", rarity: .rare, cost: 4000)

    static let stockpile = StadiumItem(name: "Stockpile", hero: nil, imageString: "Stockpile", type: .weapon, buffs: [Buff(stat: .health, value: 10), Buff(stat: .attackSpeed, value: 5), Buff(stat: .maxAmmo, value: 25)], description: "", rarity: .rare, cost: 4000)

    static let emergencyChip = StadiumItem(name: "Emergency Chip", hero: nil, imageString: "Emergency_Chip", type: .weapon, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .weaponPower, value: 5)], description: "Once per life, when you are below 150 Life, gain 15% Weapon Lifesteal and 50 Overhealth for 5s", rarity: .rare, cost: 4000)

    static let technoleech = StadiumItem(name: "Technoleech", hero: nil, imageString: "Technoleech", type: .weapon, buffs: [Buff(stat: .health, value: 25), Buff(stat: .attackSpeed, value: 5), Buff(stat: .weaponLifesteal, value: 10)], description: "", rarity: .rare, cost: 4500)

    static let icyCoolant = StadiumItem(name: "Icy Coolant", hero: nil, imageString: "Icy_Coolant", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "", rarity: .rare, cost: 5500)

    static let talonModificationModule = StadiumItem(name: "Talon Modification Module", hero: nil, imageString: "Talon_Modification_Module", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 15)], description: "", rarity: .rare, cost: 6000)

    // MARK: - Weapon Epic

    static let aerialDistresser = StadiumItem(name: "Aerial Distresser", hero: nil, imageString: "Aerial_Distresser", type: .weapon, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .attackSpeed, value: 10)], description: "Weapon damage to airborne enemies deal 25% bonus damage over 3s.", rarity: .epic, cost: 9000)

    static let codebreaker = StadiumItem(name: "Codebreaker", hero: nil, imageString: "Codebreaker", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 15)], description: "Ignore 50% of Armor's damage reduction.", rarity: .epic, cost: 10000)

    static let salvagedSlugs = StadiumItem(name: "Salvaged Slugs", hero: nil, imageString: "Salvaged_Slugs", type: .weapon, buffs: [Buff(stat: .health, value: 25), Buff(stat: .attackSpeed, value: 10), Buff(stat: .increaseDamageToBarriersAndDeployables, value: 30)], description: "Dealing Weapon Damage to Barriers or Deployables has a 50% chance to restore 1 ammo.", rarity: .epic, cost: 9000)

    static let volskayaOrdnance = StadiumItem(name: "Volskaya Ordnance", hero: nil, imageString: "Volskaya_Ordnance", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 10)], description: "Deal 5% increased Weapon Damage for every 100 Max Life the target has more than you, up to 25%.", rarity: .epic, cost: 9500)

    static let weaponJammer = StadiumItem(name: "Weapon Jammer", hero: nil, imageString: "Weapon_Jammer", type: .weapon, buffs: [Buff(stat: .armor, value: 25), Buff(stat: .weaponPower, value: 10)], description: "Dealing Weapon Damage negates 10% of the target's bonus Attack Speed and increases your Attack Speed by 10% for 2s.", rarity: .epic, cost: 10000)

    static let amarisAntidote = StadiumItem(name: "Amari's Antidote", hero: nil, imageString: "Amari's_Antidote", type: .weapon, buffs: [Buff(stat: .health, value: 25), Buff(stat: .weaponPower, value: 15)], description: "While healing an ally below 50% Life with your weapon, deal 15% increased Weapon Healing.", rarity: .epic, cost: 11000)

    static let commandersClip = StadiumItem(name: "Commander's Clip", hero: nil, imageString: "Commander's_Clip", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 10), Buff(stat: .maxAmmo, value: 40)], description: "When you use an ability or gadgets, restore 10% of your Max Ammo.", rarity: .epic, cost: 10000)

    static let boosterJets = StadiumItem(name: "Booster Jets", hero: nil, imageString: "Booster_Jets", type: .weapon, buffs: [Buff(stat: .attackSpeed, value: 20)], description: "When you use an ability or gadgets, gain 10% Move Speed for 2s.", rarity: .epic, cost: 11000)

    static let elSakaSuppressor = StadiumItem(name: "El-Sa'ka Suppressor", hero: nil, imageString: "El-Sa'ka_Suppressor", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 10)], description: "Critical Hits apply 30% Healing Reduction to the target for 2s.", rarity: .epic, cost: 11000)

    static let hardlightAccelerator = StadiumItem(name: "Hardlight Accelerator", hero: nil, imageString: "Hardlight_Accelerator", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 10), Buff(stat: .cooldownReduction, value: 10)], description: "When you use an ability or gadgets, gain 5% Weapon Power for 3s, stacking up to 3 times.", rarity: .epic, cost: 11000)

    static let theCloser = StadiumItem(name: "The Closer", hero: nil, imageString: "The_Closer", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 20), Buff(stat: .criticalDamage, value: 10)], description: "Critical Hits reveal the target for 3s.", rarity: .epic, cost: 14500)

    static let eyeOfTheSpider = StadiumItem(name: "Eye of the Spider", hero: nil, imageString: "Eye_Of_The_Spider", type: .weapon, buffs: [Buff(stat: .weaponPower, value: 25)], description: "Deal 10% increased damage to enemies below 30% Life.", rarity: .epic, cost: 14000)

    // MARK: - Ability Common

    static let chargedPlating = StadiumItem(name: "Charged Plating", hero: nil, imageString: "Charged_Plating", type: .ability, buffs: [], description: "After you spend your Ultimate Charge, gain 25 Armor and 10% Ability Power for the rest of the round.", rarity: .common, cost: 1000)

    static let powerPlaybook = StadiumItem(name: "Power Playbook", hero: nil, imageString: "Power_Playbook", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10)], description: "", rarity: .common, cost: 1000)

    static let shadySpectacles = StadiumItem(name: "Shady Spectacles", hero: nil, imageString: "Shady_Spectacles", type: .ability, buffs: [Buff(stat: .abilityLifesteal, value: 10)], description: "", rarity: .common, cost: 1000)

    static let winningAttitude = StadiumItem(name: "Winning Attitude", hero: nil, imageString: "Winning_Attitude", type: .ability, buffs: [Buff(stat: .health, value: 25)], description: "When you die, gain 15% Ultimate Charge.", rarity: .common, cost: 1500)

    // MARK: - Ability Rare

    static let customStock = StadiumItem(name: "Custom Stock", hero: nil, imageString: "Custom_Stock", type: .ability, buffs: [Buff(stat: .health, value: 10), Buff(stat: .weaponPower, value: 5), Buff(stat: .abilityPower, value: 10)], description: "", rarity: .rare, cost: 3750)

    static let biolightOverflow = StadiumItem(name: "Biolight Overflow", hero: nil, imageString: "Biolight_Overflow", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 5)], description: "When you spend your Ultimate Charge, cleanse yourself and grant nearby allies 75 Overhealth for 3s.", rarity: .rare, cost: 4000)

    static let energizedBracers = StadiumItem(name: "Energized Bracers", hero: nil, imageString: "Energized_Bracers", type: .ability, buffs: [Buff(stat: .health, value: 10), Buff(stat: .abilityPower, value: 10), Buff(stat: .abilityLifesteal, value: 10)], description: "", rarity: .rare, cost: 4000)

    static let junkerWhatchamajig = StadiumItem(name: "Junker Whatchamajig", hero: nil, imageString: "Junker_Whatchamajig", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .startingUltimateCharge, value: 25)], description: "", rarity: .rare, cost: 4000)

    static let skylineNanites = StadiumItem(name: "Skyline Nanites", hero: nil, imageString: "Skyline_Nanites", type: .ability, buffs: [Buff(stat: .abilityLifesteal, value: 10)], description: "Ability damage to airborne enemies deal 20% bonus damage over 2s", rarity: .rare, cost: 4000)

    static let wristWraps = StadiumItem(name: "Wrist Wraps", hero: nil, imageString: "Wrist_Wraps", type: .ability, buffs: [Buff(stat: .health, value: 10), Buff(stat: .abilityPower, value: 5), Buff(stat: .attackSpeed, value: 10)], description: "", rarity: .rare, cost: 4000)

    static let multiTool = StadiumItem(name: "Multi-Tool", hero: nil, imageString: "Multi-Tool", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "", rarity: .rare, cost: 4500)

    static let vitalityAmplifier = StadiumItem(name: "Vitality Amplifier", hero: nil, imageString: "Vitality_Amplifier", type: .ability, buffs: [Buff(stat: .shields, value: 25)], description: "While above 50% Life gain 10% Ability Power. Otherwise, gain 15% Ability Lifesteal and abilities refresh 10% faster.", rarity: .rare, cost: 5000)

    static let nanoCola = StadiumItem(name: "Nano Cola", hero: nil, imageString: "Nano_Cola_Item", type: .ability, buffs: [Buff(stat: .abilityPower, value: 20)], description: "", rarity: .rare, cost: 6000)

    // MARK: - Ability Epic

    static let sonicRecharger = StadiumItem(name: "Sonic Recharger", hero: nil, imageString: "Sonic_Recharger", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 10)], description: "Passive Life Regeneration can overheal up to 75.", rarity: .epic, cost: 9000)

    static let biotechMaximizer = StadiumItem(name: "Biotech Maximizer", hero: nil, imageString: "Biotech_Maximizer", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 10)], description: "When you use an ability that heals, reduce its cooldown by 5% for each unique ally it heals.", rarity: .epic, cost: 10000)

    static let catalyticCrystal = StadiumItem(name: "Catalytic Crystal", hero: nil, imageString: "Catalytic_Crystal", type: .ability, buffs: [Buff(stat: .abilityPower, value: 15)], description: "Ability Damage and Healing grants 20% more Ultimate Charge.", rarity: .epic, cost: 10000)

    static let lumericoFusionDrive = StadiumItem(name: "Lumérico Fusion Drive", hero: nil, imageString: "Lumérico_Fusion_Drive", type: .ability, buffs: [Buff(stat: .armor, value: 50), Buff(stat: .abilityPower, value: 15)], description: "When you use an ability or gadgets, restore 50 Armor or Shields over 3s.", rarity: .epic, cost: 11000)

    static let superflexor = StadiumItem(name: "Superflexor", hero: nil, imageString: "Superflexor", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .weaponPower, value: 10)], description: "When you deal Weapon Damage or Healing, gain 5% Ability Power for 3s, stacking up to 5 times.", rarity: .epic, cost: 10000)

    static let cybervenom = StadiumItem(name: "Cybervenom", hero: nil, imageString: "Cybervenom", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "Dealing Ability damage applies 30% healing reduction for 2s.", rarity: .epic, cost: 10500)

    static let threeTapTommygun = StadiumItem(name: "Three-Tap Tommygun", hero: nil, imageString: "Three-Tap_Tommygun", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10), Buff(stat: .attackSpeed, value: 10)], description: "After using an ability or gadgets, for 3 seconds Weapon Damage deals additional damage equal to 1% of the target's Life. (0.25s Cooldown).", rarity: .epic, cost: 9500)

    static let iridescentIris = StadiumItem(name: "Iridescent Iris", hero: nil, imageString: "Iridescent_Iris", type: .ability, buffs: [Buff(stat: .abilityPower, value: 20), Buff(stat: .cooldownReduction, value: 10)], description: "After spending your Ultimate Charge, gain 100 Overhealth for 3s.", rarity: .epic, cost: 11000)

    static let liquidNitrogen = StadiumItem(name: "Liquid Nitrogen", hero: nil, imageString: "Liquid_Nitrogen", type: .ability, buffs: [Buff(stat: .health, value: 25), Buff(stat: .abilityPower, value: 10)], description: "Dealing Ability Damage slows the target's Move Speed by 10% and their bonus Move Speed by 15% for 3s.", rarity: .epic, cost: 11000)

    static let markOfTheKitsune = StadiumItem(name: "Mark of the Kitsune", hero: nil, imageString: "Mark_Of_The_Kitsune", type: .ability, buffs: [Buff(stat: .abilityPower, value: 10)], description: "When you use an ability or gadgets, your next instance of Weapon Damage or Healing deals bonus damage or healing.", rarity: .epic, cost: 11000)

    static let championsKit = StadiumItem(name: "Champion's Kit", hero: nil, imageString: "Champion's_Kit", type: .ability, buffs: [Buff(stat: .abilityPower, value: 35)], description: "", rarity: .epic, cost: 14000)

    // MARK: - Survival Common

    static let ballisticBuffer = StadiumItem(name: "Ballistic Buffer", hero: nil, imageString: "Ballistic_Buffer", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "After taking damage beyond 20m, gain 50 overhealth for 3s (15s cooldown)", rarity: .common, cost: 1000)

    static let electrolytes = StadiumItem(name: "Electrolytes", hero: nil, imageString: "Electrolytes", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "At the start of the round and every time you respawn, gain 100 unrecoverable Overhealth.", rarity: .common, cost: 1000)

    static let fieldRations = StadiumItem(name: "Field Rations", hero: nil, imageString: "Field_Rations", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "While on the Objective, restore 8 Life every 1s.", rarity: .common, cost: 1000)

    static let runningShoes = StadiumItem(name: "Running Shoes", hero: nil, imageString: "Running_Shoes", type: .survival, buffs: [Buff(stat: .health, value: 10)], description: "At the start of the round and when you respawn while not in Overtime, gain 30% Move Speed for 10s while out of combat.", rarity: .common, cost: 1000)

    static let adrenalineShot = StadiumItem(name: "Adrenaline Shot", hero: nil, imageString: "Adrenaline_Shot", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "Health Packs grant 20% Move Speed for 5s and 50 Overhealth.", rarity: .common, cost: 1500)

    static let armoredVest = StadiumItem(name: "Armored Vest", hero: nil, imageString: "Armored_Vest", type: .survival, buffs: [Buff(stat: .armor, value: 25)], description: "", rarity: .common, cost: 1500)

    static let firstAidKit = StadiumItem(name: "First Aid Kit", hero: nil, imageString: "First_Aid_Kit", type: .survival, buffs: [Buff(stat: .shields, value: 25)], description: "Reduce the time before your Life begins regenerating by 33%.", rarity: .common, cost: 1500)

    static let reflexCoating = StadiumItem(name: "Reflex Coating", hero: nil, imageString: "Reflex_Coating", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "When you are stunned, slept, hindered or anti-healed, gain 75 Overhealth for 3s (20s Cooldown).", rarity: .common, cost: 1500)

    static let siphonGloves = StadiumItem(name: "Siphon Gloves", hero: nil, imageString: "Siphon_Gloves", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "[Quick Melee] damage heals for 25 Life.", rarity: .common, cost: 1500)

    // MARK: - Survival Rare

    static let cushionedPadding = StadiumItem(name: "Cushioned Padding", hero: nil, imageString: "Cushioned_Padding", type: .survival, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .negativeEffectDuration, value: -40)], description: "When affected by Stun, Sleep, or Hinder, restore 10% of your max Life over 3s.", rarity: .rare, cost: 3750)

    static let ironEyes = StadiumItem(name: "Iron Eyes", hero: nil, imageString: "Iron_Eyes", type: .survival, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .moveSpeed, value: 5)], description: "You take 20% reduced damage from Critical Hits.", rarity: .rare, cost: 3750)

    static let reinforcedTitanium = StadiumItem(name: "Reinforced Titanium", hero: nil, imageString: "Reinforced_Titanium", type: .survival, buffs: [Buff(stat: .shields, value: 25)], description: "While you have Shields, take 15% reduced Ability Damage and gain 5% Ability Power.", rarity: .rare, cost: 3750)

    static let vishkarCondensor = StadiumItem(name: "Vishkar Condensor", hero: nil, imageString: "Vishkar_Condensor", type: .survival, buffs: [Buff(stat: .shields, value: 25)], description: "Convert 150 Health into Shields.", rarity: .rare, cost: 3750)

    static let bloodbound = StadiumItem(name: "Bloodbound", hero: nil, imageString: "Bloodbound", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "The last enemy to deal a final blow to you is Revealed when nearby. Deal 10% more damage to them and take 10% reduced damage from them.", rarity: .rare, cost: 4000)

    static let ironcladExhaustPorts = StadiumItem(name: "Ironclad Exhaust Ports", hero: nil, imageString: "Ironclad_Exhaust_Ports", type: .survival, buffs: [Buff(stat: .health, value: 10), Buff(stat: .cooldownReduction, value: 5)], description: "When you use an ability or gadgets, gain 25 Overhealth for 3s.", rarity: .rare, cost: 4000)

    static let vitalETee = StadiumItem(name: "Vital-E-Tee", hero: nil, imageString: "Vital-E-Tee", type: .survival, buffs: [Buff(stat: .armor, value: 10)], description: "Convert 100 Health into Armor.", rarity: .rare, cost: 4000)

    static let crusaderHydraulics = StadiumItem(name: "Crusader Hydraulics", hero: nil, imageString: "Crusader_Hydraulics", type: .survival, buffs: [Buff(stat: .armor, value: 25)], description: "While you have Armor, take 10% reduced Weapon Damage and gain 5% Attack Speed.", rarity: .rare, cost: 4500)

    static let mekaZSeries = StadiumItem(name: "Meka Z-Series", hero: nil, imageString: "Meka_Z-Series", type: .survival, buffs: [Buff(stat: .healthArmorShields, value: 8)], description: "", rarity: .rare, cost: 5000)

    // MARK: - Survival Epic

    static let geneticistsVial = StadiumItem(name: "Geneticist's Vial", hero: nil, imageString: "Geneticist's_Vial", type: .survival, buffs: [Buff(stat: .health, value: 25)], description: "The first time you would die each round, revive instead with 250 Life after 3s.", rarity: .epic, cost: 9000)

    static let divineIntervention = StadiumItem(name: "Divine Intervention", hero: nil, imageString: "Divine_Intervention", type: .survival, buffs: [Buff(stat: .shields, value: 50)], description: "When you take more than 150 pre-mitigation damage at once, gain Overhealth equal to 20% of damage taken for 3s and start regenerating your Shields.", rarity: .epic, cost: 9500)

    static let overdriveCore = StadiumItem(name: "Overdrive Core", hero: nil, imageString: "Overdrive_Core", type: .survival, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .weaponPower, value: 10)], description: "Once per life, if you take damage that would reduce you below 30% Max Life, first gain 300 decaying Overhealth.", rarity: .epic, cost: 9500)

    static let gloomgauntlet = StadiumItem(name: "Gloomgauntlet", hero: nil, imageString: "Gloomgauntlet", type: .survival, buffs: [Buff(stat: .armor, value: 50), Buff(stat: .meleeDamage, value: 15)], description: "[Melee] damage grants 10% Move Speed and restores 5% of Max Life over 2s.", rarity: .epic, cost: 10000)

    static let martianMender = StadiumItem(name: "Martian Mender", hero: nil, imageString: "Martian_Mender", type: .survival, buffs: [Buff(stat: .health, value: 25), Buff(stat: .cooldownReduction, value: 10)], description: "Restore 3% of your Life every 1s.", rarity: .epic, cost: 10000)

    static let phantasmicFlux = StadiumItem(name: "Phantasmic Flux", hero: nil, imageString: "Phantasmic_Flux", type: .survival, buffs: [Buff(stat: .weaponPower, value: 10), Buff(stat: .abilityPower, value: 10), Buff(stat: .weaponLifesteal, value: 15), Buff(stat: .abilityLifesteal, value: 15)], description: "While at full Life, Lifesteal grants up to 100 Overhealth.", rarity: .epic, cost: 10000)

    static let rustungVonWilhelm = StadiumItem(name: "Rüstung von Wilhelm", hero: nil, imageString: "Rüstung_Von_Wilhelm", type: .survival, buffs: [Buff(stat: .healthArmorShields, value: 15)], description: "While below 30% Life, gain 10% Damage Reduction.", rarity: .epic, cost: 10000)

    static let vanadiumInjection = StadiumItem(name: "Vanadium Injection", hero: nil, imageString: "Vanadium_Injection", type: .survival, buffs: [Buff(stat: .shields, value: 50)], description: "While at 100% Ultimate Charge, gain: 50 Health, 10% Weapon Power, 10% Ability Power, 10% Attack Speed, 10% Cooldown Reduction, 10% Move Speed", rarity: .epic, cost: 10000)

    static let nebulaConduit = StadiumItem(name: "Nebula Conduit", hero: nil, imageString: "Nebula_Conduit", type: .survival, buffs: [Buff(stat: .health, value: 50), Buff(stat: .weaponPower, value: 5)], description: "Prevent 15% of incoming damage and instead take that prevented damage over 3s.", rarity: .epic, cost: 11000)

    static let ogundimuReductionField = StadiumItem(name: "Ogundimu Reduction Field", hero: nil, imageString: "Ogundimu_Reduction_Field", type: .survival, buffs: [Buff(stat: .armor, value: 50)], description: "When you take damage, gain 0.5% damage reduction for 1s, stacking up to 20 times.", rarity: .epic, cost: 11000)

    // MARK: - Gadgets Common

    static let auraRepellant = StadiumItem(name: "Aura Repellant", hero: nil, imageString: "Aura_Repellant", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Knockback all enemies within 8m.", rarity: .common, cost: 1500)

    static let barrierSnippet = StadiumItem(name: "Barrier Snippet", hero: nil, imageString: "Barrier_Snippet", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Gain 50 Overhealth for 3s.", rarity: .common, cost: 1500)

    static let exoSprings = StadiumItem(name: "Exo Springs", hero: nil, imageString: "Exo_Springs", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "Holding Crouch increases the height of your next jump by up to 250%.", rarity: .common, cost: 1500)

    static let featheredSoles = StadiumItem(name: "Feathered Soles", hero: nil, imageString: "Feathered_Soles", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Gain 25% Move Speed for 5s. Dealing damage removes this bonus.", rarity: .common, cost: 1500)

    static let medKit = StadiumItem(name: "Med Kit", hero: nil, imageString: "Med_Kit", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "On Use: Restore 20 Life every 1s for 10s. Taking damage removes this bonus.", rarity: .common, cost: 1500)

    // MARK: - Gadgets Rare

    static let dashingSkates = StadiumItem(name: "Dashing Skates", hero: nil, imageString: "Dashing_Skates", type: .gadgets, buffs: [Buff(stat: .health, value: 25), Buff(stat: .moveSpeed, value: 5)], description: "On Use: Dash a short distance.", rarity: .rare, cost: 3750)

    static let fieldSupport = StadiumItem(name: "Field Support", hero: nil, imageString: "Field_Support", type: .gadgets, buffs: [Buff(stat: .armor, value: 25), Buff(stat: .weaponPower, value: 5)], description: "On Use: Place a Biotic Field at your location that restores 50 Life every 1s for 5s.", rarity: .rare, cost: 4000)

    static let kitsuneSnippet = StadiumItem(name: "Kitsune Snippet", hero: nil, imageString: "Kitsune_Snippet", type: .gadgets, buffs: [Buff(stat: .shields, value: 25), Buff(stat: .cooldownReduction, value: 5)], description: "On Use: Gain 50 Overhealth and 25% Move Speed for 3s. If you are debuffed, gain an additional 100 Overhealth.", rarity: .rare, cost: 4000)

    // MARK: - Gadgets Epic

    static let kitsuneCharm = StadiumItem(name: "Kitsune Charm", hero: nil, imageString: "Kitsune_Charm", type: .gadgets, buffs: [Buff(stat: .shields, value: 50), Buff(stat: .incomingNegativeEffectDuration, value: -40)], description: "On Use: Cleanse yourself of most negative effects, restore 75 Life, and gain Invulnerability and 75% Move Speed for 0.65s.", rarity: .epic, cost: 9000)

    static let jetSkates = StadiumItem(name: "Jet Skates", hero: nil, imageString: "Jet_Skates", type: .gadgets, buffs: [Buff(stat: .health, value: 25), Buff(stat: .weaponPower, value: 10), Buff(stat: .abilityPower, value: 10)], description: "On Use: Dash a short distance.", rarity: .epic, cost: 9500)

    static let necroticRepellant = StadiumItem(name: "Necrotic Repellant", hero: nil, imageString: "Necrotic_Repellant", type: .gadgets, buffs: [Buff(stat: .shields, value: 50), Buff(stat: .abilityPower, value: 15)], description: "On Use: Knockback and slow all enemies within 8m and apply 30% Healing Reduction for 5s.", rarity: .epic, cost: 10000)

    static let superSerum = StadiumItem(name: "Super Serum", hero: nil, imageString: "Super_Serum", type: .gadgets, buffs: [Buff(stat: .health, value: 25), Buff(stat: .attackSpeed, value: 10), Buff(stat: .weaponLifesteal, value: 10)], description: "On Use: Increase your total Attack Speed by 50% but deal 15% reduced Weapon Damage and Healing for 5s. Reload all your Ammo.", rarity: .epic, cost: 10000)

    static let colossusCore = StadiumItem(name: "Colossus Core", hero: nil, imageString: "Colossus_Core", type: .gadgets, buffs: [Buff(stat: .healthArmorShields, value: 10), Buff(stat: .knockbackResist, value: 40), Buff(stat: .slowResist, value: 40)], description: "On Use: Gain Unstoppable, 25% Damage Reduction, 25% Max Life, and grow in size, but deal 25% reduced damage and healing for 3s.", rarity: .epic, cost: 9500)

    static let refresher = StadiumItem(name: "Refresher", hero: nil, imageString: "Refresher", type: .gadgets, buffs: [Buff(stat: .health, value: 25)], description: "Reduce all Ability cooldowns by 8s.", rarity: .epic, cost: 13000)
}
