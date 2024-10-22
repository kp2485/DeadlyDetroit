//
//  GameSession.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import Foundation
import SwiftData

@Model class GameSession {
    @Attribute var dateStarted: Date
    @Attribute var dateEnded: Date?
    @Relationship var player: Player
    @Relationship var party: Party
    @Relationship var currentLocation: Location
    @Relationship var encounters: [Encounter]
    
    init(player: Player, party: Party, location: Location) {
        self.dateStarted = Date()
        self.player = player
        self.party = party
        self.currentLocation = location
        self.encounters = []
    }
    
    func endSession() {
        self.dateEnded = Date()
    }
}
