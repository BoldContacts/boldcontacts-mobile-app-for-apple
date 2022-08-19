import Contacts

extension CNContact {
    
    /// Does this contact have an postal address at a given index (default 0)?
    ///
    /// If the key is not available, then return false.
    ///
    /// Example:
    ///
    ///     let bool: Bool = contact.hasPostalAddress()
    ///
    ///     let bool: Bool = contact.hasPostalAddress(index: 1)
    ///
    public func hasPostalAddress(index: Int = 0) -> Bool {
        return self.isKeyAvailable(CNContactPostalAddressesKey)
            && index >= 0
            && index < self.postalAddresses.count
    }

    /// Get this contact's postal address at a given index (default 0).
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let labeledValue: CNLabeledValue<CNPostalAddress>? = contact.getPostalAddress()
    ///
    ///     let labeledValue: CNLabeledValue<CNPostalAddress>? = contact.getPostalAddress(index: 1)
    ///
    public func getPostalAddress(index: Int = 0) -> CNLabeledValue<CNPostalAddress>? {
        if self.isKeyAvailable(CNContactPostalAddressesKey) {
            return self.postalAddresses[safe: index]
        }
        return nil
    }

    /// Get this contact's postal address at a given index (default 0).
    ///
    /// Return its value.
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let postalAddress: CNPostalAddress? = contact.getPostalAddressValue()
    ///
    ///     let postalAddress: CNPostalAddress? = contact.getPostalAddressValue(index: 1)
    ///
    public func getPostalAddressValue(index: Int = 0) -> CNPostalAddress? {
        if let x = getPostalAddress(index: index) {
            return Optional(x.value)
        }
        return nil
    }
    
}
