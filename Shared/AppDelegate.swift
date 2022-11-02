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

import SwiftUI
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    
    //
    // UIApplicationDelegate lifecycle functions
    //
    
    // The launch process has begun; state restoration hasn’t occured.
    func application(
        _ application: UIApplication,
        willFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?
    ) -> Bool {
        logger.debug("AppDelegate application willFinishLaunchingWithOptions")
        return true
    }

    // The launch process is almost done; the app is almost ready to run.
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        logger.debug("AppDelegate application didFinishLaunchingWithOptions")
        return true
    }

    // The app has become active.
    func applicationDidBecomeActive(
        _ application: UIApplication
    ) {
        logger.debug("AppDelegate apapplicationDidBecomeActives")
    }

    // The app is about to become inactive.
    func applicationWillResignActive(
        _ application: UIApplication
    ) {
        logger.debug("AppDelegate applicationWillResignActive")
    }
    
    // The app is now in the background.
    func applicationDidEnterBackground(
        _ application: UIApplication
    ) {
        logger.debug("AppDelegate applicationDidEnterBackground")
    }
    
    // The app is about to enter the foreground.
    func applicationWillEnterForeground(
        _ application: UIApplication) {
        logger.debug("AppDelegate applicationWillEnterForeground")
    }
    
    // The app is about to terminate.
    func applicationWillTerminate(
        _ application: UIApplication) {
        logger.debug("AppDelegate applicationWillTerminate")
    }

    //
    // Contact Store
    //

    /// Observe contact store notifications
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


    //
    // Terminate
    //

    // See https://stackoverflow.com/questions/64993265/swiftui-and-appkit-use-close-dialog-to-ask-if-the-app-is-allowed-to-quit
    
//    @Published var terminate = false
//
//    func applicationShouldTerminate(_ sender: NSApplication) -> NSApplication.TerminateReply {
//        if NSApplication.shared.windows.count == 0 {
//            return .terminateNow
//        }
//        self.terminate = true
//        return .terminateLater
//    }
//
//    /// This method tells the application, that it should not close
//    func `continue`() {
//        NSApplication.shared.reply(toApplicationShouldTerminate: false)
//    }
//
//    func close() {
//        NSApplication.shared.reply(toApplicationShouldTerminate: true)
//    }
    
}
