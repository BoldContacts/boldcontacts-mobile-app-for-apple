import Foundation
import SwiftUI
import Contacts
import os

typealias AppItem = CNContact

@main
struct BoldContactsApp: App {

    //
    // Generic setup
    //
    
    // Connect to app delegate class defined in AppDelegate.swift
    @ZZApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    // Track the application state and their transitions
    //@State var appState: AppState = AppState.Init

    //
    // Specific setup
    //
    
    let persistenceController = PersistenceController.shared
    @State private var store = CNContactStore()
    @State private var cursor = Cursor<AppItem>()

    init() {
        logger.debug("App init()")
        logger.debug("CNContactStore authorizationStatus \(CNContactStore.authorizationStatus(for: .contacts).partName()!)")
        addLaunchCount()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(cursor:  cursor)
            .onAppear {
                Task.init {
                    logger.debug("App store.requestAccess()")
                    do {
                        if try await store.requestAccess(for: .contacts) {
                            logger.debug("App store.requestAccess() -> true")
                            loadContactsFromStoreToCursor(store: store, cursor: cursor)
                        } else {
                            logger.debug("App store.requestAccess() -> false")
                        }
                    }
                    catch {
                        logger.debug("App store.requestAccess() -> error: \(String(describing: error))")
                    }
                }
            }
            .modifier(AlertForIntroduction(cursor: cursor))
            .modifier(AlertForDemonstration(cursor: cursor))
        }
    }
    
}
