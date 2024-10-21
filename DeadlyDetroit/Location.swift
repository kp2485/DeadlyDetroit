//
//  Location.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Location {
    @Attribute var name: String
    @Attribute var dangerLevel: Int // Higher values indicate more dangerous areas
    
    init(name: String, dangerLevel: Int) {
        self.name = name
        self.dangerLevel = dangerLevel
    }
}
