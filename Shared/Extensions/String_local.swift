import Foundation
import SwiftUI
import OSLog

extension String {
    
    /// Get a local string i.e. translate self from a bundle lookup key to a localized string value.
    ///
    /// Example:
    ///
    /// ```
    /// "hello".local() // Use the locale.current
    /// -> "Hello"
    ///
    /// "hello".local(Locale(identifier: "en-US"))
    /// -> "Hello"
    ///
    /// "hello".local(Locale(identifier: "zh-CN"))
    /// => "你好"
    ///
    /// let locale = Locale(identifier: "hi_IN")
    /// "hello".local => "नमस्ते"
    ///
    /// let locale = Locale(identifier: "es_ES")
    /// "hello".local => "Hola"
    /// ```
    ///
    /// This function aims to detect errors and log them as errors:
    ///
    ///   * If the string key is empty.
    ///
    ///   * If the string key isn't found in the bundle lookup.
    ///
    ///   * If the string key lookup result is an empty string.
    ///
    /// This function
    ///
    func local(
        locale: Locale = .current
    ) -> String? {
        guard !self.isEmpty else {
            Logger().error("\(#file) -> local -> self is empty.")
            return nil
        }
        guard let languageCodeIdentifierString = locale.languageCodeIdentifierString() else {
            Logger().error("\(#file) -> local -> languageCodeIdentifierString nil.")
            return nil
        }
        guard let path = Bundle.main.path(forResource: languageCodeIdentifierString, ofType: "lproj") else {
            Logger().error("\(#file) -> local -> path is nil. self: \(self)")
            return nil
        }
        guard let bundle = Bundle(path: path) else {
            Logger().error("\(#file) -> local -> bundle is nil. self: \(self)")
            return nil
        }
        let value = bundle.localizedString(forKey: self, value: nil, table: nil)
        guard !value.isEmpty else {
            Logger().error("\(#file) -> local -> value is empty. self: \(self)")
            return nil
        }
        return value
    }
    
}
