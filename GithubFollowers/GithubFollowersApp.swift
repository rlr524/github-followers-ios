//
//  GithubFollowersApp.swift
//  GithubFollowers
//
//  Created by Rob Ranf on 2/6/25.
//

import SwiftUI
import SwiftData

@main
struct GithubFollowersApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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
            SearchView()
        }
        .modelContainer(sharedModelContainer)
    }
}
