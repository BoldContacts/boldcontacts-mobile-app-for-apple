import Contacts

extension CNContact {
    
    /// Get this contact's string representation.
    ///
    /// Return: a reasonable string representation.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let string: String? = contact.intoString()
    ///
    public func intoString() -> String? {
        return CNContactFormatter().string(from: self)
    }

}
