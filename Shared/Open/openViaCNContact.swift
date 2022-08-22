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
public func openViaCNContact(contact: CNContact) -> Bool {
    logger.debug("openViaContact. contact: \(contact)")
    openViaCNContactTry(contact: contact)
    if let phoneNumber: CNPhoneNumber = contact.getPhoneNumberValue() {
        if openViaTel(string: phoneNumber.stringValue) {
            openViaCNContactSuccess(contact: contact)
            return true
        }
    }
    openViaCNContactFailure(contact: contact)
    return false
}

private func openViaCNContactTry(
    contact: CNContact
) {
    logger.debug(
        """
        openViaCNContactTry.
        code: 72abfdde4e3cf1db212bf2a7ff5d2320
        contact: \(contact)
        """
    )
}

private func openViaCNContactSuccess(
    contact: CNContact
) {
    logger.info(
        """
        openViaCNContactSucccess.
        code: d30fae7b746f91309fda74e5ef62cb8e
        contact: \(contact)
        """
    )
}

private func openViaCNContactFailure(
    contact: CNContact
) {
    logger.error(
        """
        openViaCNContactFailure.
        code: c1fc7dd33e827941b2396bee7f3f3259
        contact: \(contact)
        """
    )
}
