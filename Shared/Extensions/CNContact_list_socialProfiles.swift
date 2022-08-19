import Contacts

extension CNContact {
    
    /// Does this contact have an social profile at a given index (default 0)?
    ///
    /// If the key is not available, then return false.
    ///
    /// Example:
    ///
    ///     let bool: Bool = contact.hasSocialProfile()
    ///
    ///     let bool: Bool = contact.hasSocialProfile(index: 1)
    ///
    public func hasSocialProfile(index: Int = 0) -> Bool {
        return self.isKeyAvailable(CNContactSocialProfilesKey)
            && index >= 0
            && index < self.socialProfiles.count
    }

    /// Get this contact's social profile at a given index (default 0).
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let labeledValue: CNLabeledValue<CNSocialProfile>? = contact.getSocialProfile()
    ///
    ///     let labeledValue: CNLabeledValue<CNSocialProfile>? = contact.getSocialProfile(index: 1)
    ///
    public func getSocialProfile(index: Int = 0) -> CNLabeledValue<CNSocialProfile>? {
        if self.isKeyAvailable(CNContactSocialProfilesKey) {
            return self.socialProfiles[safe: index]
        }
        return nil
    }

    /// Get this contact's social profile at a given index (default 0).
    ///
    /// Return its value.
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let postalAddress: CNSocialProfile? = contact.getSocialProfileValue()
    ///
    ///     let postalAddress: CNSocialProfile? = contact.getSocialProfileValue(index: 1)
    ///
    public func getSocialProfileValue(index: Int = 0) -> CNSocialProfile? {
        if let x = getSocialProfile(index: index) {
            return Optional(x.value)
        }
        return nil
    }
    
}
