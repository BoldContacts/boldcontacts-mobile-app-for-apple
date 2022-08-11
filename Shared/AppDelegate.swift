import Foundation

// See https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-an-appdelegate-to-a-swiftui-app
///
/// Add this to the SwiftUI setup:
///
///     @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
///
/// Example:
///
///     @main
///     struct MyApp: App {
///         @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
///         var body: …
///
///
/// Tip: For push notifications, you should probably adjust the delegate
/// property of UNUserNotificationCenter.current() so that it points to
/// a custom class you own.

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        logger.info("AppDelegate application")
        return true
    }

    func observeConactStoreNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(contactStoreDidChange),
            name: NSNotification.Name.CNContactStoreDidChange,
            object: nil
        )
    }

    /// Refetch all contacts.
    ///
    /// Refetch by contact identifiers, or by however you originally fetched them.
    /// Then release the cached objects.
    ///
    /// Note: cached objects are stale, but not invalid.
    ///
    @objc func contactStoreDidChange(notification: NSNotification){
        logger.info(
            """
            contactStoreDidChange.
            code: 90837fcca8634337baf440f3d6b14a45
            notification: \(notification)
            """
        )
    }

}
