//
//  Player.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Player {
    @Attribute var name: String
    @Relationship var scores: [Score]
    @Relationship var gameSessions: [GameSession]
    
    init(name: String) {
        self.name = name
        self.scores = []
        self.gameSessions = []
    }
}
