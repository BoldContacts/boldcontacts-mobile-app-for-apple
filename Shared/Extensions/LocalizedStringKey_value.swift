import SwiftUI

extension LocalizedStringKey {

    /// Get the localized string key object's value as a string.
    ///
    /// Example:
    /// ```
    /// let x = LocalizedStringKey("foo")
    /// let string = x.value() // look up the value of key "foo"
    /// ```
    ///
    func value(locale: Locale = .current) -> String? {
        guard let key = self.key else { return nil }
        let language = locale.languageCode
        guard let path = Bundle.main.path(forResource: language, ofType: "lproj") else { return nil }
        guard let bundle = Bundle(path: path) else { return nil }
        return NSLocalizedString(key, bundle: bundle, comment: "")
    }
    
}
