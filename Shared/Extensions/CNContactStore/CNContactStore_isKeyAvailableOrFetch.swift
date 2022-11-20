import Contacts

extension CNContactStore {
    
    /// Try to ensure a contact has the given key available.
    ///
    /// If the contact has the key, then return the contact as is.
    ///
    /// If the given key is not available, then refetch.
    ///
    /// If there is a fetch error, then return the contact as-is.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let key = CNContactPhoneNumbersKey
    ///     let bool: Bool = contactHasKeyOrRefresh(contact, key)
    ///
    public func isKeyAvailableOrFetch(contact: CNContact, key: String) -> CNContact {
        if !contact.isKeyAvailable(key) {
            let store = CNContactStore()
            do {
                isKeyAvailableOrFetchTry(contact: contact)
                let contact = try store.unifiedContact(
                    withIdentifier: contact.identifier,
                    keysToFetch: [key] as! [CNKeyDescriptor]
                )
                isKeyAvailableOrFetchSuccess(contact: contact)
                return contact
            } catch {
                isKeyAvailableOrFetchFailure(contact: contact, error: String(describing: error))
            }
        }
        return contact
    }

    private func isKeyAvailableOrFetchTry(contact: CNContact) {
        logger.debug(
            """
            CNContactStore isKeyAvailableOrFetchTry.
            code: b879b1f422d936f9557afb569fae7e1b
            contact: \(contact)
            """
        )
    }

    private func isKeyAvailableOrFetchSuccess(contact: CNContact) {
        logger.info(
            """
            CNContactStore isKeyAvailableOrFetchSuccess.
            code: cfe413820ab512cbc4dcf2cbcdb98eec
            contact: \(contact)
            """
        )
    }

    private func isKeyAvailableOrFetchFailure(contact: CNContact, error: String) {
        logger.error(
            """
            CNContactStore isKeyAvailableOrFetchFailure.
            code: a6df99e87b14035f4be1a1fe5a3ba8f0
            contact: \(contact)
            error: \(error)
            """
        )
    }

}
