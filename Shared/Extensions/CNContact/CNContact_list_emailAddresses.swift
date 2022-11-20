import Contacts

extension CNContact {
    
    /// Does this contact have an email address at a given index (default 0)?
    ///
    /// If the key is not available, then return false.
    ///
    /// Example:
    ///
    ///     let bool: Bool = contact.hasEmailAddress()
    ///
    ///     let bool: Bool = contact.hasEmailAddress(index: 1)
    ///     
    public func hasEmailAddress(index: Int = 0) -> Bool {
        return self.isKeyAvailable(CNContactEmailAddressesKey)
            && index >= 0
            && index < self.emailAddresses.count
    }

    /// Get this contact's email address at a given index (default 0).
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let labeledValue: CNLabeledValue<NSString>? = contact.getEmailAddress()
    ///
    ///     let labeledValue: CNLabeledValue<NSString>? = contact.getEmailAddress(index: 1)
    ///
    public func getEmailAddress(index: Int = 0) -> CNLabeledValue<NSString>? {
        if self.isKeyAvailable(CNContactEmailAddressesKey) {
            return self.emailAddresses[safe: index]
        }
        return nil
    }

    /// Get this contact's email address at a given index (default 0).
    ///
    /// Return its value.
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let emailAddress: NSString? = contact.getEmailAddressValue()
    ///
    ///     let emailAddress: NSString? = contact.getEmailAddressValue(index: 1)
    ///
    public func getEmailAddressValue(index: Int = 0) -> NSString? {
        if let x = getEmailAddress(index: index) {
            return Optional(x.value)
        }
        return nil
    }
    
}
