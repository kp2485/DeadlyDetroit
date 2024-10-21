//
//  Enemy.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Enemy {
    @Attribute var name: String
    @Attribute var health: Int
    
    init(name: String, health: Int) {
        self.name = name
        self.health = health
    }
}
