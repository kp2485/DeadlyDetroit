//
//  Party.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Party {
    @Relationship var characters: [Character]
    
    init() {
        self.characters = []
    }
    
    func totalHealth() -> Int {
        return characters.reduce(0) { $0 + $1.health }
    }
}
