import Contacts

extension CNContactStore {
    
    /// Try to ensure a contact has the given keys available.
    ///
    /// If the keys are avaiable, then return the contact as is.
    ///
    /// If the keys are not available, then refetch the contact.
    ///
    /// If there is a fetch error, then return the contact as is.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let keys = [CNContactPhoneNumbersKey, CNContactEmailAddressesKey]
    ///     let bool: Bool = contactHasKeysOrRefresh(contact, keys)
    ///
    public func areKeysAvailableOrFetch(contact: CNContact, keys: [CNKeyDescriptor]) -> CNContact {
        if !contact.areKeysAvailable(keys) {
            let store = CNContactStore()
            do {
                areKeysAvailableOrFetchTry(contact: contact)
                let contact = try store.unifiedContact(
                    withIdentifier: contact.identifier,
                    keysToFetch: keys
                )
                areKeysAvailableOrFetchSuccess(contact: contact)
                return contact
            } catch {
                areKeysAvailableOrFetchFailure(contact: contact, error: String(describing: error))
            }
        }
        return contact
    }

    private func areKeysAvailableOrFetchTry(contact: CNContact) {
        logger.info(
            """
            CNContactStore areKeysAvailableOrFetchTry.
            code: 73387f5bf21247621998817d19c66f70
            contact: \(contact)
            """
        )
    }

    private func areKeysAvailableOrFetchSuccess(contact: CNContact) {
        logger.info(
            """
            CNContactStore areKeysAvailableOrFetchSuccess.
            code: c3ac540fdab6594d05025eea9963ec61
            contact: \(contact)
            """
        )
    }

    private func areKeysAvailableOrFetchFailure(contact: CNContact, error: String) {
        logger.error(
            """
            CNContactStore areKeysAvailableOrFetchFailure.
            code: 3f6078d6a0d09e14d0f7aec6d21e13c2
            contact: \(contact)
            error: \(error)
            """
        )
    }

}
