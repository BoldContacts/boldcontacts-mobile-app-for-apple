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
            CNContactGivenNameKey as CNKeyDescriptor,
            CNContactFamilyNameKey as CNKeyDescriptor,
            CNContactBirthdayKey as CNKeyDescriptor,
            CNContactPhoneNumbersKey as CNKeyDescriptor,
            CNContactEmailAddressesKey as CNKeyDescriptor,
            CNContactPostalAddressesKey as CNKeyDescriptor,
            CNContactSocialProfilesKey as CNKeyDescriptor,
            CNContactUrlAddressesKey as CNKeyDescriptor,
            CNContactImageDataKey as CNKeyDescriptor,
            CNContactThumbnailImageDataKey as CNKeyDescriptor,
            CNContactImageDataAvailableKey as CNKeyDescriptor,
            CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
            CNContact.descriptorForAllComparatorKeys(),
        ]
    }

}
