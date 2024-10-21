//
//  Score.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import Foundation
import SwiftData

@Model class Score {
    @Attribute var value: Int
    @Attribute var dateAchieved: Date
    @Relationship var player: Player
    
    init(value: Int, player: Player) {
        self.value = value
        self.dateAchieved = Date()
        self.player = player
    }
}
