import Contacts

extension CNContactStore {
    
    /// Get the CNContactStore authorization status as a message string,
    /// suitable for logger debugging, or alert messages, etc.
    ///
    public class func authorizationStatusMessage() -> String {
        switch  self.authorizationStatus(for: .contacts) {
        case .authorized:
            return "Contact store authorization status is authorized."
        case .notDetermined:
            return "Contact store authorization status is not determined."
        case .restricted:
            return "Contact store authorization status is restricted."
        case .denied:
            return "Contact store authorization status is denied."
        default:
            return "Contact store authorization status is unknown."
        }
    }

}
