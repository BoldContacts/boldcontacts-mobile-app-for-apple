import UIKit

/// Open a string as a "facetime://" scheme URL.
///
/// TODO: Research what happens if FaceTime doesn't connect.
///
/// Example:
///
///      let phoneNumberString: String = "+1-415-555-5555"
///      openViaFaceTime(phoneNumberString)
///
public func openViaFaceTime(string: String) {
    logger.debug("openViaFaceTime. string: \(string)")
    let parsed = parsePhoneNumberStringToURLSafeString(string: string)
    let urlString = "facetime://\(parsed)"
    if let url: URL = URL(string: urlString) {
        openViaFaceTimeTry(string: string, parsed: parsed, urlString: urlString, url: url)
        UIApplication.shared.open(url)
        openViaFaceTimeSuccess(string: string, parsed: parsed, urlString: urlString, url: url)
    } else {
        openViaFaceTimeFailure(string: string, parsed: parsed, urlString: urlString)
    }
}

private func openViaFaceTimeTry(
    string: String,
    parsed: String,
    urlString: String,
    url: URL
) {
    logger.debug(
        """
        openViaFaceTimeTry.
        code: ca0fd5e6fc6a103a2c8278e0bc486374
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url \(url)
        """
    )
}

private func openViaFaceTimeSuccess(
string: String,
parsed: String,
urlString: String,
url: URL
) {
    logger.info(
        """
        openViaFaceTimeSucccess.
        code: 5f783778c5c34d7de8dcda50e5c273b7
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        url: \(url)
        """
    )
}

private func openViaFaceTimeFailure(string: String, parsed: String, urlString: String) {
    logger.error(
        """
        openViaFaceTimeFailure.
        code: 21dac57203cd2a2e84f6982d535ff4ec
        string: \(string)
        parsed: \(parsed)
        urlString: \(urlString)
        """
    )
}
