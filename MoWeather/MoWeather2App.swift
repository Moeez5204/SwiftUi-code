//
//  MoWeather2App.swift
//  MoWeather2
//
//  Created by Abdul-Moeez on 18/10/2022.
//

import SwiftUI

@main
struct MoWeather2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
