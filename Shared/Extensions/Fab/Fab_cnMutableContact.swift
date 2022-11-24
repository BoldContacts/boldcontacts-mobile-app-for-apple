import Contacts

extension Fab {
    
    public static func cnMutableContact(
        _ givenName: String? = nil,
        _ middleName: String? = nil,
        _ familyName: String? = nil
    ) -> CNMutableContact {
        let contact = CNMutableContact()
        contact.givenName = givenName ?? Fab.gemName()
        contact.middleName = middleName ?? Fab.airName()
        contact.familyName = familyName ?? Fab.skiName()
        return contact
    }

    public static func cnMutableContactDeep(
        _ givenName: String? = nil,
        _ middleName: String? = nil,
        _ familyName: String? = nil
    ) -> CNMutableContact {
        let contact = cnMutableContact(
            givenName,
            middleName,
            familyName
        )
        contact.birthday = Fab.birthdateAsDateComponents()
        contact.emailAddresses = Fab.cnContactEmailAddresses()
        contact.phoneNumbers = Fab.cnContactPhoneNumbers()
        contact.postalAddresses = Fab.cnContactPostalAddresses()
        contact.socialProfiles = Fab.cnContactSocialProfiles()
        contact.imageData = Fab.zzImageData()
        return contact
    }

}
