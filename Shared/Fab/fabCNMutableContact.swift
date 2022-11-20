import Contacts

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
    contact.imageData = fabZZImageData()
    return contact
}
