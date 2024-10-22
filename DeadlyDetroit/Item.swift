//
//  Item.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    @Attribute var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
