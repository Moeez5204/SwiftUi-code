//
//  CALCApp.swift
//  CALC
//
//  Created by Abdul-Moeez on 12/10/2022.
//

import SwiftUI

@main
struct CALCApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
