import Contacts

extension CNContact {

    /// Get this contact's full name.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let fullName = contact.fullName() ?? "Unknown"
    ///
    public func fullName() -> String? {
        return CNContactFormatter.string(from: self, style: .fullName)
    }

}
