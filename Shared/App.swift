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
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    // Track the application state and their transitions
    @State var appState: AppState = AppState.Init

    //
    // Specific setup
    //
    
    let persistenceController = PersistenceController.shared
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
            .modifier(AlertForDemonstration(cursor: cursor))
            .modifier(AlertForDiagnostics())
        }
    }
    
    public mutating func appStateNext() {
        switch appState {
        case .Init:
            self.appState = AppState.AlertForDemonstration
        case .AlertForDemonstration:
            self.appState = AppState.AlertForDiagnostics
        case .AlertForDiagnostics:
            self.appState = AppState.Browse
        case .Browse:
            self.appState = AppState.Browse
        case .Unknown:
            self.appState = AppState.Unknown
        @unknown default:
            self.appState = AppState.Unknown
        }
    }

}
