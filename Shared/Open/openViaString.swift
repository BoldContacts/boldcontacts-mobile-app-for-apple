import UIKit

/// Open a string as a URL.
///
/// TODO: Research what happens if the application doesn't connect.
///
/// Example:
///
///      let urlString: String = "https://example.com"
///      openViaURLString(urlString)
///
public func openViaString(string: String) {
    logger.debug("openViaString. string: \(string)")
    let parsed = string //TODO: parse
    let urlString = parsePhoneNumberStringToURLSafeString(string: string)
    if let url: URL = URL(string: urlString) {
        openViaStringTry(string: string, parsed: parsed, urlString: urlString, url: url)
        UIApplication.shared.open(url)
        openViaStringSuccess(string: string, parsed: parsed, urlString: urlString, url: url)
    } else {
        openViaStringFailure(string: string, parsed: parsed, urlString: urlString)
    }
}

private func openViaStringTry(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.debug(
        """
        openViaStringTry.
        code: 46dfe3ffc00d805e2753f7d9b9cd35de
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaStringSuccess( 
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.info(
        """
        openViaStringSucccess.
        code: b02de866eacff4e22fb0330432e9c7c0
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaStringFailure(
    string: String,
    parsed: String,
    urlString: String
) {
    logger.error(
        """
        openViaStringFailure.
        code: 4bcabf2c2abe2ac0a9b77faad7400271
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        """
    )
}
