//
//  Dropdown_and_slideoverApp.swift
//  Dropdown and slideover
//
//  Created by Abdul-Moeez on 13/10/2022.
//

import SwiftUI

@main
struct Dropdown_and_slideoverApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
