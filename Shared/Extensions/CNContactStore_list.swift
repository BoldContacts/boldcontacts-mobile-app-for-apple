import Contacts

extension CNContactStore {

    /// List contacts.
    ///
    /// Return: a results list of contacts.
    ///
    /// Example:
    ///
    ///     let store = CNContactStore()
    ///     let contacts: [CNContact] = store.list()
    ///
    public func list(keysToFetch: [CNKeyDescriptor] = CNContactStore.keysToFetch()) -> [CNContact] {
        let fetchRequest = CNContactFetchRequest(keysToFetch: keysToFetch)
        var results = [CNContact]()
        try? self.enumerateContacts(with: fetchRequest, usingBlock: { contact, _ in
            results.append(contact)
        })
        return results
    }

}
