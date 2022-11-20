import Contacts

extension CNContact {
    
    /// Does this contact have a URL address at a given index (default 0)?
    ///
    /// If the key is not available, then return false.
    /// 
    /// Example:
    ///
    ///     let bool: Bool = contact.hasUrlAddress()
    ///
    ///     let bool: Bool = contact.hasUrlAddress(index: 1)
    ///     
    public func hasUrlAddress(index: Int = 0) -> Bool {
        return self.isKeyAvailable(CNContactUrlAddressesKey)
            && index >= 0
            && index < self.urlAddresses.count
    }

    /// Get this contact's URL address at a given index (default 0).
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let labeledValue: CNLabeledValue<NSString>? = contact.getUrlAddress()
    ///
    ///     let labeledValue: CNLabeledValue<NSString>? = contact.getUrlAddress(index: 0)
    ///
    public func getUrlAddress(index: Int = 0) -> CNLabeledValue<NSString>? {
        if self.isKeyAvailable(CNContactUrlAddressesKey) {
            return self.urlAddresses[safe: index]
        }
        return nil
    }

    /// Get this contact's URL address at a given index (default 0).
    ///
    /// Return its value.
    ///
    /// If the key is not available, then return nil.
    ///
    /// Examples:
    ///
    ///     let urlAddress: NSString? = contact.getUrlAddressValue()
    ///
    ///     let urlAddress: NSString? = contact.getUrlAddressValue(index: 0)
    ///
    public func getUrlAddressValue(index: Int = 0) -> NSString? {
        if let x = getUrlAddress(index: index) {
            return Optional(x.value)
        }
        return nil
    }

}
