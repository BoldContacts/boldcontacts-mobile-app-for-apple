import UIKit

/// Open a string as a "sms://" scheme URL.
///
/// TODO: Research what happens if SMS doesn't connect.
///
/// Example:
///
///      let phoneNumberString: String = "+1-415-555-5555"
///      openViaSMS(phoneNumberString)
///
public func openViaSMS(string: String) {
    logger.debug("openViaSMS. string: \(string)")
    let parsed = parsePhoneNumberStringToURLSafeString(string: string)
    let urlString = "sms://\(parsed)"
    if let url: URL = URL(string: urlString) {
        openViaSMSTry(string: string, parsed: parsed, urlString: urlString, url: url)
        UIApplication.shared.open(url)
        openViaSMSSuccess(string: string, parsed: parsed, urlString: urlString, url: url)
    } else {
        openViaSMSFailure(string: string, parsed: parsed, urlString: urlString)
    }
}

private func openViaSMSTry(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.debug(
        """
        openViaSMSTry.
        code: 46dfe3ffc00d805e2753f7d9b9cd35de
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaSMSSuccess(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.info(
        """
        openViaSMSSucccess.
        code: b02de866eacff4e22fb0330432e9c7c0
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaSMSFailure(
    string: String,
    parsed: String,
    urlString: String
) {
    logger.error(
        """
        openViaSMSFailure.
        code: 4bcabf2c2abe2ac0a9b77faad7400271
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        """
    )
}
