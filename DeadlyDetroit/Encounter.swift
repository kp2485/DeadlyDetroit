//
//  Encounter.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Encounter {
    @Attribute var name: String
    @Attribute var isCompleted: Bool
    @Relationship var location: Location

    init(name: String, location: Location, isCompleted: Bool = false) {
        self.name = name
        self.isCompleted = isCompleted
        self.location = location
    }
}

@Model class StoreEncounter: Encounter {
    @Relationship var itemsForSale: [Item]
    @Relationship var storeOwner: Character?  // Optional store owner NPC
    
    init(name: String, location: Location, itemsForSale: [Item], storeOwner: Character? = nil) {
        self.itemsForSale = itemsForSale
        self.storeOwner = storeOwner
        super.init(name: name, location: location)
    }
}

@Model class EnemyEncounter: Encounter {
    @Relationship var enemies: [Character]  // Enemies the party must fight
    @Attribute var isBossFight: Bool  // Optional flag to signify a boss encounter
    
    init(name: String, location: Location, enemies: [Character], isBossFight: Bool = false) {
        self.enemies = enemies
        self.isBossFight = isBossFight
        super.init(name: name, location: location)
    }
}

@Model class ConversationEncounter: Encounter {
    @Relationship var npc: Character  // The NPC the player is talking to
    @Attribute var dialogue: [String]  // Dialogue lines or choices
    
    init(name: String, location: Location, npc: Character, dialogue: [String]) {
        self.npc = npc
        self.dialogue = dialogue
        super.init(name: name, location: location)
    }
}
