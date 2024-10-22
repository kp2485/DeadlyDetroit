//
//  Character.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Character {
    @Attribute var name: String
    @Attribute var health: Int
    @Attribute var bad: Int  // strength
    @Attribute var groove: Int // dexterity
    @Attribute var mojo: Int // attractiveness
    @Attribute var slick: Int // intelligence
    @Attribute var righteousness: Int // wisdom
    @Attribute var soul: Int // authenticity
    
    @Relationship var inventory: [Item]
    @Attribute var bread: Int // money
    
    init(name: String, health: Int = 100, bad: Int, groove: Int, soul: Int, mojo: Int, slick: Int,  righteousness: Int, inventory: [Item], bread: Int) {
        self.name = name
        self.health = health
        self.bad = bad
        self.groove = groove
        self.soul = soul
        self.mojo = mojo
        self.slick = slick
        self.righteousness = righteousness
        self.inventory = inventory
        self.bread = bread
    }
}
