//
//  BoldContactsApp.swift
//  Shared
//
//  Created by jph on 8/11/22.
//

import SwiftUI

@main
struct BoldContactsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
