import UIKit
import Contacts

/// Open via a contact.
///
/// TODO: Research what happens if contact doesn't connect.
///
/// Example:
///
///      let contact: CNContact = …
///      openViaContact(contact)
///
public func opener(
    url: URL,
    contact: CNContact
) -> Bool {
    logger.debug("\(#file) opener -> url: \(url) contact: \(contact)")
    openerTry(url, contact)
    UIApplication.shared.open(url)
    openerSuccess(contact: contact)
            return true
        }
    }
    openerFailure(contact: contact)
    return false
}

private func openerTry(
    _ url: URL,
    _ contact: CNContact
) {
    logger.debug(
        """
        openerTry.
        code: 72abfdde4e3cf1db212bf2a7ff5d2320
        url: \(url)
        contact: \(contact)
        """
    )
}

private func openerSuccess(
    _ url: URL,
    _ contact: CNContact
) {
    logger.info(
        """
        openerSucccess.
        code: d30fae7b746f91309fda74e5ef62cb8e
        url: \(url)
        contact: \(contact)
        """
    )
}

private func openerFailure(
    _ url: URL,
    _ contact: CNContact
) {
    logger.error(
        """
        openerFailure.
        code: c1fc7dd33e827941b2396bee7f3f3259
        url: \(url)
        contact: \(contact)
        """
    )
}
