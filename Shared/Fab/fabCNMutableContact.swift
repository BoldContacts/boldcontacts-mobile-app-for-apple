import Contacts
import UIKit

public func fabCNMutableContact() -> CNMutableContact {
    let contact = CNMutableContact()
    contact.givenName = fabGemName()
    contact.middleName = fabAirName()
    contact.familyName = fabSkiName()
    contact.birthday = fabBirthdateAsDateComponents()
    contact.emailAddresses = fabCNContactEmailAddresses()
    contact.phoneNumbers = fabCNContactPhoneNumbers()
    contact.postalAddresses = fabCNContactPostalAddresses()
    contact.socialProfiles = fabCNContactSocialProfiles()
    let imageName = fabSFSymbolsLetterCircle()
    if let image = UIImage(named: imageName) {
        contact.imageData = image.jpegData(compressionQuality: 1.0)
    } else {
        logger.error("\(#file) imageName: \(imageName)")
    }
    return contact
}
