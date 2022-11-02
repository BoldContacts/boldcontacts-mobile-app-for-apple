import Foundation
import Contacts

extension CNContactStore {
    
    /// Get the CNContactStore authorization status as a message string,
    /// suitable for logger debugging, or alert messages, etc.
    ///
    public class func authorizationStatusMessage(for: CNEntityType) -> String {
        return "Contact store authorization status is \(self.authorizationStatus(for: .contacts).rawValue)"
    }

}

//name()
//switch  self.authorizationStatus(for: .contacts) {
//case .authorized:
//    return localizedString(
//        "CNContactStore.authorizationStatus.authorized",
//        "Contact store authorization status is authorized."
//    )
//case .notDetermined:
//    return localizedString(
//        "CNContactStore.authorizationStatus.notDetermined",
//        "Contact store authorization status is not determined."
//    )
//case .restricted:
//    return localizedString(
//        "CNContactStore.authorizationStatus.restricted",
//        "Contact store authorization status is restricted."
//    )
//case .denied:
//    return localizedString(
//        "CNContactStore.authorizationStatus.denied",
//        "Contact store authorization status is denied."
//    )
//@unknown default:
//    return localizedString(
//        "CNContactStore.authorizationStatus.unknown",
//        "Contact store authorization status is unknown."
//    )
//}
//}
//
//}
