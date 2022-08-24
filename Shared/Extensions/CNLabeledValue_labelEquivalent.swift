import Foundation
import Contacts

extension CNLabeledValue {
    
    /// Is the label equivalent to a given string?
    ///
    /// This implementation defines equivalent as case insensitive equial;
    /// if there's no label, then use a blank string.
    ///
    ///
    @objc func labelEquivalent(string: String) -> Bool {
        return (self.label ?? "").caseInsensitiveCompare(string) == .orderedSame
    }
 
}
