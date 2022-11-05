import Foundation
import SwiftUI
import OSLog

extension String {
    
    /// Use this string as a localized string key to look up a localized string.
    ///
    /// Credit https://stackoverflow.com/questions/60841915/how-to-change-localizedstringkey-to-string-in-swiftui
    ///
    func localize(
        locale: Locale = .current
    ) -> String? {
        guard let path = Bundle.main.path(forResource: locale.languageCode, ofType: "lproj") else {
            Logger().error("String -> localize() -> path is nil. self: \(self)")
            return nil
        }
        guard let bundle = Bundle(path: path) else {
            Logger().error("String -> localize() -> bundle is nil. self: \(self)")
            return nil
        }
        let value = bundle.localizedString(forKey: self, value: nil, table: nil)
        guard value != "" else {
            Logger().error("String -> localize() -> value is empty. self: \(self)")
            return nil
        }
        return value
    }
    
}
