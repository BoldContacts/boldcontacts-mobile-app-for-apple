import SwiftUI

extension LocalizedStringKey {

    /// Get the localized string key object's key as a string.
    ///
    /// Example:
    /// ```
    /// let x = LocalizedStringKey("foo")
    /// let string = x.key() // "foo" as a string
    /// ```
    ///
    var key: String? {
        Mirror(reflecting: self)
            .children
            .first(where: { $0.label == "key" })?
            .value as? String
    }
}
