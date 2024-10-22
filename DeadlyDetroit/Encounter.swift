//
//  Encounter.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftData

@Model class Encounter {
    @Attribute var name: String
    
    init(name: String) {
        self.name = name
    }
}
