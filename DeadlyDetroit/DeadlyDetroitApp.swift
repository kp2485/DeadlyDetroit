//
//  DeadlyDetroitApp.swift
//  DeadlyDetroit
//
//  Created by Kyle Peterson on 10/20/24.
//

import SwiftUI
import SwiftData

@main
struct DeadlyDetroitApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            Player.self,
            Score.self,
            Character.self,
            Party.self,
            Encounter.self,
            GameSession.self,
            Location.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
