import Contacts

extension CNContact {
    
    /// Does this contact have an phone number at a given index (default 0)?
    ///
    /// If the key is not available, then return false.
    ///
    /// Example:
    ///
    ///     let bool: Bool = contact.hasPhoneNumber()
    ///
    ///     let bool: Bool = contact.hasPhoneNumber(index: 1)
    ///
    public func hasPhoneNumber(index: Int = 0) -> Bool {
        return self.isKeyAvailable(CNContactPhoneNumbersKey)
            && index >= 0
            && index < self.phoneNumbers.count
    }

    /// Get this contact's phone number at a given index (default 0).
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let labeledValue: CNLabeledValue<CNPhoneNumber>? = contact.getPhoneNumber()
    ///
    ///     let labeledValue: CNLabeledValue<CNPhoneNumber>? = contact.getPhoneNumber(index: 1)
    ///
    public func getPhoneNumber(index: Int = 0) -> CNLabeledValue<CNPhoneNumber>? {
        if self.isKeyAvailable(CNContactPhoneNumbersKey) {
            return self.phoneNumbers[safe: index]
        }
        return nil
    }

    /// Get this contact's phone number at a given index (default 0).
    ///
    /// Return its value.
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let phoneNumber: CNPhoneNumber? = contact.getPhoneNumberValue()
    ///
    ///     let phoneNumber: CNPhoneNumber? = contact.getPhoneNumberValue(index: 1)
    ///
    public func getPhoneNumberValue(index: Int = 0) -> CNPhoneNumber? {
        if let x = getPhoneNumber(index: index) {
            return Optional(x.value)
        }
        return nil
    }
    
}
