import Foundation
import SwiftUI
import Contacts

extension CNAuthorizationStatus: FullName {
    
    public func fullName() -> String? {
        guard let partName = self.partName() else { return nil }
        return String(String(describing: type(of: self)) + "." + partName)
    }
    
}
