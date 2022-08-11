import Contacts

extension CNMutableContact {

    /// Get this contact's full name.
    ///
    /// Example:
    ///
    ///     let contact: CNMutableContact = …
    ///     let fullName = contact.fullName() ?? "Unknown"
    ///
    public func fullName() -> String? {
        return CNContactFormatter.string(from: self, style: .fullName)
    }

}
