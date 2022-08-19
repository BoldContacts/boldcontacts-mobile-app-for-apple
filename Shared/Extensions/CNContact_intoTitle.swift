import Contacts

extension CNContact: IntoTitle {

    /// Get this contact's title.
    ///
    /// This implementation uses the contact's full name.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let title: String? = contact.title()
    ///
    public func intoTitle() -> String? {
        return CNContactFormatter.string(from: self, style: .fullName)
    }

}
