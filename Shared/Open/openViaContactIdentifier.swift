import UIKit

/// Open a string as a contact identifier in the user's address book.
///
/// TODO: Research what happens if the contact doesn't connect.
///
/// Example:
///
///      let contact: CNContact = …
///      let string: String = contact.identifier
///      openViaContactIdentifier(string)
///
public func openViaContactIdentifier(string: String) -> Bool {
    logger.debug("openViaContactIdentifier. string: \(string)")
    guard let parsed = string.xtrim.urlSafe else { return false }
    let urlString = "addressbook://\(parsed):ABPerson"
    if let url: URL = URL(string: urlString) {
        openViaContactIdentifierTry(string: string, parsed: parsed, urlString: urlString, url: url)
        UIApplication.shared.open(url)
        openViaContactIdentifierSuccess(string: string, parsed: parsed, urlString: urlString, url: url)
        return true
    }
    openViaContactIdentifierFailure(string: string, parsed: parsed, urlString: urlString)
    return false
}

private func openViaContactIdentifierTry(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.debug(
        """
        openViaContactIdentifierTry.
        code: cd0c7546f2660b0499712e8fa6d841d1
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaContactIdentifierSuccess(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.info(
        """
        openViaContactIdentifierSucccess.
        code: b94e816d7e08a7e94fec11a9d7eafc24
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaContactIdentifierFailure(
    string: String,
    parsed: String,
    urlString: String
) {
    logger.error(
        """
        openViaContactIdentifierFailure.
        code: 38f70cde7de1cf9a1662c128f8ae7053
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        """
    )
}
