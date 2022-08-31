import Contacts

extension CNContactStore {

    /// Request access to the default store, if it's needed.
    ///
    /// Return true=success or false=failure
    ///
    /// Example:
    ///
    ///     let store = CNContactStore()
    ///     let acessable: Bool = store.requestAccessAsNeeded(for: .contacts)
    ///
    public func requestAccessAsNeeded() async throws -> Bool {
        let status: CNAuthorizationStatus = CNContactStore.authorizationStatus(for: .contacts)
        switch status {
        case .notDetermined:
            logger.info("Contact store authorization status is not determined.")
            do {
                return try await self.requestAccess(for: .contacts)
            }
            catch {
                logger.info("Contact store request access -> error: \(String(describing: error))")
                return false
            }
        case .authorized:
            logger.info("Contact store authorization status is authorized.")
            return true
        case .restricted:
            logger.error("Contact store authorization status is restricted. To use this app, the user or owner needs to remove the restriction.")
        case .denied:
            logger.error("Contact store authorization status is denied. To use this app, the user needs to authorize it via the Preferences app.")
        default:
            logger.error("Contact store authorization status is unknown. Please report this to the app developer joel@joelparkerhenderson.com.")
        }
        return false
    }

}
