//
//  Location.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import Foundation
import SwiftData

@Model class Location {
    @Attribute var name: String
    @Attribute var dangerLevel: Int // Higher values indicate more dangerous areas
    
    init(name: String, dangerLevel: Int) {
        self.name = name
        self.dangerLevel = dangerLevel
    }
}

extension Location {
    func generateEncounters() -> [Encounter] {
        var encounters: [Encounter] = []
        
        // Randomly add a store encounter
        if Bool.random() {
            let items = [Item(timestamp: Date(), itemName: "Health Potion"), Item(timestamp: Date(), itemName: "Magic Sword")]
            let store = StoreEncounter(name: "Mysterious Merchant", location: self, itemsForSale: items, storeOwner: Character(name: "Mysterious Merchant", bad: 0, groove: 0, soul: 0, mojo: 0, slick: 0, righteousness: 0, inventory: [], bread: 0))
            encounters.append(store)
        }
        
        // Randomly add an enemy encounter
        if Bool.random() {
            let enemies = [Character(name: "Bandit", bad: 10, groove: 5, soul: 3, mojo: 4, slick: 6, righteousness: 2, inventory: [], bread: 0)]
            let enemyEncounter = EnemyEncounter(name: "Ambush", location: self, enemies: enemies, isBossFight: Bool.random())
            encounters.append(enemyEncounter)
        }
        
        // Randomly add a conversation encounter
        if Bool.random() {
            let npc = Character(name: "Old Man", bad: 0, groove: 0, soul: 0, mojo: 0, slick: 0, righteousness: 10, inventory: [], bread: 0)
            let dialogue = ["Hello traveler, beware the road ahead.", "I have seen many fall before the great dragon."]
            let conversation = ConversationEncounter(name: "Wise Old Man", location: self, npc: npc, dialogue: dialogue)
            encounters.append(conversation)
        }
        
        return encounters
    }
}
