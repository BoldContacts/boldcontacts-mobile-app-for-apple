import Contacts

private func authorizationStatusLoggerDebug() {
    let status: CNAuthorizationStatus = CNContactStore.authorizationStatus(for: .contacts)
    switch status {
    case .authorized:
        logger.debug("Contact store authorization status is authorized.")
    case .notDetermined:
        logger.debug("Contact store authorization status is not determined.")
    case .restricted:
        logger.debug("Contact store authorization status is restricted.")
    case .denied:
        logger.debug("Contact store authorization status is denied.")
    default:
        logger.debug("Contact store authorization status is unknown.")
    }
}
