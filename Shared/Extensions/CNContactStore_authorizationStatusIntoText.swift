import SwiftUI
import Contacts

extension CNContactStore {
    
    /// Create a Text view with localized text that explains ContactStore authorization status
    public func authorizationStatusIntoText() -> Text {
        switch CNContactStore.authorizationStatus(for: .contacts) {
        case .authorized:
            return Text("CNContactStore.authorizationStatus.authorized")
        case .notDetermined:
            return Text("CNContactStore.authorizationStatus.notDetermined")
        case .restricted:
            return Text("CNContactStore.authorizationStatus.restricted")
        case .denied:
            return Text("CNContactStore.authorizationStatus.denied")
        @unknown default:
            return Text("CNContactStore.authorizationStatus.default")
        }
    }
    
}
