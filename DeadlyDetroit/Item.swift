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
    @Attribute var itemName: String
    
    init(timestamp: Date, itemName: String) {
        self.timestamp = timestamp
        self.itemName = itemName
    }
}
