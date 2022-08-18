import SwiftUI
import Contacts
import os

@main
struct BoldContactsApp: App {
    let persistenceController = PersistenceController.shared

    // Connect to app delegate class defined in AppDelegate.swift
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var cursor: Cursor

    init() {
        logger.info("BoldContacts init")
        CNContactStore().requestAccess(for: .contacts) { (access, error) in
            logger.info("Access: \(access)")
        }
        /* if this is a development run */
        if true {
            demoDeleteContactForMe()
            demoCreateContactForMe()
            demoDeleteContactsForABCDEF()
            demoCreateContactsForABCDEF()
        }
        cursor = Cursor(list: CNContactStore.list())
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
