import SwiftUI
import Contacts

extension CNAuthorizationStatus: PartName {
    
    public func partName() -> String? {
        switch self {
        case CNAuthorizationStatus.authorized: return "authorized"
        case CNAuthorizationStatus.notDetermined: return "notDetermined"
        case CNAuthorizationStatus.restricted: return "restricted"
        case CNAuthorizationStatus.denied: return "denied"
        @unknown default: return nil
        }
    }
    
}
