import Contacts

extension CNContact: IntoSubtitle {

    /// Get this contact's subtitle.
    ///
    /// This implementation is TODO.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let subtitle: String? = contact.subtitle()
    ///
    public func intoSubtitle() -> String? {
        return Optional("")
    }

}
