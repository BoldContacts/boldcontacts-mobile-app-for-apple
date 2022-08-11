import Contacts

extension CNMutableContact {

    /// Get this contact's string representation.
    ///
    /// Return: a reasonable string representation.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let string: String = contact.toString()
    ///
    public func toString() -> String? {
        return CNContactFormatter().string(from: self)
    }

}
