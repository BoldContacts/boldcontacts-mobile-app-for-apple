import SwiftUI
import Contacts
import os

typealias AppItem = CNContact

@main
struct BoldContactsApp: App {
    let persistenceController = PersistenceController.shared

    // Connect to app delegate class defined in AppDelegate.swift
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var cursor: Cursor<AppItem>

    init() {
        logger.info("BoldContacts init")
        CNContactStore().requestAccess(for: .contacts) { (access, error) in
            logger.info("Access: \(access)")
        }
        #if targetEnvironment(simulator)
            demoContacts()
        #else
            // your real device code
        #endif
        cursor = Cursor<AppItem>(list: CNContactStore.list(), callable: openViaCNContact)
    }

    var body: some Scene {
        WindowGroup {
            ContentView(cursor: cursor)
        }
    }
    
}

//Original:
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//        }
//    }
