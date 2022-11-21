import Contacts

extension Fab {
    
    public static func cnMutableContact() -> CNMutableContact {
        let contact = CNMutableContact()
        contact.givenName = Fab.gemName()
        contact.middleName = Fab.airName()
        contact.familyName = Fab.skiName()
        contact.birthday = Fab.birthdateAsDateComponents()
        contact.emailAddresses = Fab.cnContactEmailAddresses()
        contact.phoneNumbers = Fab.cnContactPhoneNumbers()
        contact.postalAddresses = Fab.cnContactPostalAddresses()
        contact.socialProfiles = Fab.cnContactSocialProfiles()
        contact.imageData = Fab.ZZImageData()
        return contact
    }
    
}
