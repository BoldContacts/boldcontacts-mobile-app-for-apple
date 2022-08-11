import UIKit

/// Open a string as a "mailto://" scheme URL.
///
/// TODO: Research what happens if email doesn't connect.
///
/// Example:
///
///      let emailAddress: String = "alice@example.com"
///      openViaMail(emailAddress)
///
public func openViaMailTo(string: String) {
    logger.debug("openViaMailTo. string: \(string)")
    let parsed = parsePhoneNumberStringToURLSafeString(string: string)
    let urlString = "mailto://\(parsed)"
    if let url: URL = URL(string: urlString) {
        openViaMailToTry(string: string, parsed: parsed, urlString: urlString, url: url)
        UIApplication.shared.open(url)
        openViaMailToSuccess(string: string, parsed: parsed, urlString: urlString, url: url)
    } else {
        openViaMailToFailure(string: string, parsed: parsed, urlString: urlString)
    }
}

private func openViaMailToTry(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.debug(
        """
        openViaMailTry.
        code: 46dfe3ffc00d805e2753f7d9b9cd35de
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaMailToSuccess(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.info(
        """
        openViaMailToSucccess.
        code: b02de866eacff4e22fb0330432e9c7c0
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: " + String(describing: url)
        """
    )
}

private func openViaMailToFailure(
    string: String,
    parsed: String,
    urlString: String
) {
    logger.error(
        """
        openViaMailToFailure.
        code: 4bcabf2c2abe2ac0a9b77faad7400271
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        """
    )
}
