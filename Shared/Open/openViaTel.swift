import UIKit

/// Open a string as a "tel://" scheme URL.
///
/// TODO: Research what happens if telephone doesn't connect.
///
/// Example:
///
///      let phoneNumberString: String = "+1-415-555-5555"
///      openViaSMS(phoneNumberString)
///
public func openViaTel(string: String) {
    logger.debug("openViaTel. string: \(string)")
    let parsed = parsePhoneNumberStringToURLSafeString(string: string)
    let urlString = "tel://\(parsed)"
    if let url: URL = URL(string: urlString) {
        openViaTelTry(string: string, parsed: parsed, urlString: urlString, url: url)
        UIApplication.shared.open(url)
        openViaTelSuccess(string: string, parsed: parsed, urlString: urlString, url: url)
    } else {
        openViaTelFailure(string: string, parsed: parsed, urlString: urlString)
    }
}

private func openViaTelTry(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.debug(
        """
        openViaTelTry.
        code: 89d4e858ddd2e0717f7c6012a96dc82b
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaTelSuccess(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.info(
        """
        openViaTelSucccess.
        code: 82f8126a9acabf4de7db6baaea210370
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaTelFailure(
    string: String,
    parsed: String,
    urlString: String
) {
    logger.error(
        """
        openViaTelFailure.
        code: 13383bf620b0ba7641ae0a632a3de5bb
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        """
    )
}
