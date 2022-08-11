import Contacts

extension CNContact {
    
    /// Get this contact's email address at a given index,
    /// and return its value.
    ///
    /// If the contact has no email addresses,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: NSString? = contact.getEmailAddressValue(0)
    ///
    public func getEmailAddressValue(index: Int) -> NSString? {
        if self.isKeyAvailable(CNContactEmailAddressesKey) {
            if index < self.emailAddresses.count {
                let x = self.emailAddresses[index]
                return Optional(x.value)
            }
        }
        return nil
    }

    /// Get this contact's email address at a given index,
    /// and return its value as a String.
    ///
    /// If the contact has no email addresses,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: String? = contact.getEmailAddressValueAsString(0)
    ///
    public func getEmailAddressValueAsString(index: Int) -> String? {
        return getEmailAddressValue(index: index) as? String
    }

    /// Get this contact's FaceTime information at a given index,
    /// and return its value.
    ///
    /// Caution: this implementation is heuristic and imperfect.
    ///
    ///   * If the contact has a phone number, then use it.
    ///
    ///   * If the contact has an email address, then use it.
    ///
    /// If the contact has no email addresses,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let faceTime: String? = contact.getFaceTimeValueAsString(0)
    ///
    public func getFaceTimeValueAsString(index: Int) -> String? {
        return
            getPhoneNumberValueAsString(index: index) ??
            getEmailAddressValueAsString(index: index) ??
            nil
    }

    /// Get this contact's phone number at a given index,
    /// and return its value.
    ///
    /// If the contact has no phone numbers,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: CNPhoneNumber? = contact.getPhoneNumberValue(0)
    ///
    public func getPhoneNumberValue(index: Int) -> CNPhoneNumber? {
        if self.isKeyAvailable(CNContactPhoneNumbersKey) {
            if index < self.phoneNumbers.count {
                let x = self.phoneNumbers[index]
                return Optional(x.value)
            }
        }
        return nil
    }

    /// Get this contact's phone number at a given index,
    /// and return its value as a String.
    ///
    /// If the contact has no phone numbers,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: String? = contact.getPhoneNumberValueAsString(0)
    ///
    public func getPhoneNumberValueAsString(index: Int) -> String? {
        return getPhoneNumberValue(index: index)?.stringValue
    }

    /// Get this contact's social profile at a given index,
    /// and return its value.
    ///
    /// If the contact has no social profiles,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: CNSocialProfile? = contact.getSocialProfileValue(0)
    ///
    public func getSocialProfileValue(index: Int) -> CNSocialProfile? {
        if self.isKeyAvailable(CNContactSocialProfilesKey) {
            if index < self.socialProfiles.count {
                let x = self.socialProfiles[index]
                return Optional(x.value)
            }
        }
        return nil
    }

    /// Get this contact's social profile at a given index,
    /// and return its value URL String.
    ///
    /// If the contact has no social profiles,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let urlString: String? = contact.getSocialProfileValueURLString(0)
    ///
    public func getSocialProfileValueURLString(index: Int) -> String? {
        return getSocialProfileValue(index: index)?.urlString
    }

    /// Does this contact have any email address?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasEmailAddress()
    ///
    public func hasEmailAddress() -> Bool {
        return self.isKeyAvailable(CNContactEmailAddressesKey)
            && self.emailAddresses.count > 0
    }

    /// Does this contact have any FaceTime information?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasFaceTime()
    ///
    public func hasFaceTime() -> Bool {
        return hasPhoneNumber() || hasEmailAddress()
    }

    /// Does this contact have any phone number?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasPhoneNumber()
    ///
    public func hasPhoneNumber() -> Bool {
        return self.isKeyAvailable(CNContactPhoneNumbersKey)
            && self.phoneNumbers.count > 0
    }

    /// Does this contact have any social profile?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasSocialProfile()
    ///
    public func hasSocialProfile() -> Bool {
        return self.isKeyAvailable(CNContactSocialProfilesKey)
            && self.socialProfiles.count > 0
    }

    /// Get this contact's primary email address (i.e. index 0).
    ///
    /// If the contact has no email address, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: NSString? = contact.primaryEmailAddressValue()
    ///
    public func primaryEmailAddressValue() -> NSString? {
        return self.getEmailAddressValue(index: 0)
    }

    /// Get this contact's primary email address (i.e. index 0) as a String
    ///
    /// If the contact has no email address, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: String? = contact.primaryEmailAddressValueAsString()
    ///
    public func primaryEmailAddressValueAsString() -> String? {
        return self.getEmailAddressValueAsString(index: 0)
    }

    /// Get this contact's primary FaceTime information (i.e. index 0) as a String
    ///
    /// If the contact has no phone number or email address, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let faceTime: String? = contact.primaryFaceTimeValueAsString()
    ///
    public func primaryFaceTimeValueAsString() -> String? {
        return
            primaryPhoneNumberValueAsString() ??
            primaryEmailAddressValueAsString() ??
            nil
    }
    
    /// Get this contact's primary phone number (i.e. index 0).
    ///
    /// If the contact has no phone number, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: CNPhoneNumber? = contact.primaryPhoneNumberValue()
    ///
    public func primaryPhoneNumberValue() -> CNPhoneNumber? {
        return self.getPhoneNumberValue(index: 0)
    }
    
    /// Get this contact's primary phone number (i.e. index 0) as a String.
    ///
    /// If the contact has no phone number, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: String? = contact.primaryPhoneNumberValueAsString()
    ///
    public func primaryPhoneNumberValueAsString() -> String? {
        return self.getPhoneNumberValueAsString(index: 0)
    }
    
    /// Get this contact's primary social profile (i.e. index 0).
    ///
    /// If the contact has no social profile, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: CNSocialProfile? = contact.primarySocialProfileValue()
    ///
    public func primarySocialProfileValue() -> CNSocialProfile? {
        return self.getSocialProfileValue(index: 0)
    }

    /// Get this contact's primary social profile (i.e. index 0) value URL String.
    ///
    /// If the contact has no social profile, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: String? = contact.primarySocialProfileValueAsURLString()
    ///
    public func primarySocialProfileValueURLString() -> String? {
        return self.getSocialProfileValueURLString(index: 0)
    }

}
