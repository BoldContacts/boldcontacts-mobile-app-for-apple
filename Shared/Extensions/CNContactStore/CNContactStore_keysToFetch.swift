import Contacts

extension CNContactStore {
    
    /// Define contact keys to fetch.
    ///
    /// Return: a list of key descriptors.
    ///
    /// Example:
    ///
    ///     let keysToFetch: [CNKeyDescriptor] = CNContactStore.keysToFetch()
    ///
    public class func keysToFetch() -> [CNKeyDescriptor] {
        return [
            CNContactGivenNameKey,
            CNContactFamilyNameKey,
            CNContactBirthdayKey,
            CNContactPhoneNumbersKey,
            CNContactEmailAddressesKey,
            CNContactPostalAddressesKey,
            CNContactSocialProfilesKey,
            CNContactImageDataKey,
            CNContactThumbnailImageDataKey,
            CNContactImageDataAvailableKey,
            CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
            CNContact.descriptorForAllComparatorKeys(),
        ] as! [CNKeyDescriptor]
    }

}
