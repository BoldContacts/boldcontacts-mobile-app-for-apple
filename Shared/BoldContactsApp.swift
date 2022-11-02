import Foundation
import SwiftUI
import Contacts
import os

typealias AppItem = CNContact

@main
struct BoldContactsApp: App {
    let persistenceController = PersistenceController.shared
    
    // Connect to app delegate class defined in AppDelegate.swift
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    @State private var store = CNContactStore()
    @State private var cursor = Cursor<AppItem>()

    init() {
        logger.debug("BoldContacts init()")
        logger.debug("CNContactStore authorizationStatus \(CNContactStore.authorizationStatus(for: .contacts).partName()!)")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(cursor:  cursor)
            .onAppear {
                Task.init {
                    logger.debug("BoldContacts store.requestAccess()")
                    do {
                        if try await store.requestAccess(for: .contacts) {
                            logger.debug("BoldContacts store.requestAccess() -> true")
                            loadContactsFromStoreToCursor(store: store, cursor: cursor)
                        } else {
                            logger.debug("BoldContacts store.requestAccess() -> false")
                        }
                    }
                    catch {
                        logger.debug("BoldContacts store.requestAccess() -> error: \(String(describing: error))")
                    }
                }
            }
            .modifier(AlertForDiagnotics())
        }
    }
}
