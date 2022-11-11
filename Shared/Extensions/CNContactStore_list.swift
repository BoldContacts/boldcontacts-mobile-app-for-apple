import Contacts

extension CNContactStore {

    /// List contacts.
    ///
    /// Return: a results list of contacts.
    ///
    /// Example:
    /// ```
    /// let store = CNContactStore()
    /// let contacts: [CNContact] = store.list()
    /// ```
    ///
    /// Example with a group identifier name a.k.a. contact list name:
    /// ```
    /// let store = CNContactStore()
    /// let contacts: [CNContact] = store.list(groupIdentifier: "MyGroup")
    ///  ```
    public func list(
        keysToFetch: [CNKeyDescriptor] = CNContactStore.keysToFetch(),
        groupIdentifier: String? = nil,
        sortOrder:  CNContactSortOrder = CNContactSortOrder.userDefault
    ) -> [CNContact] {
        var results = [CNContact]()
        let request = CNContactFetchRequest(keysToFetch: keysToFetch)
        if let x = groupIdentifier {
            request.predicate = CNContact.predicateForContactsInGroup(withIdentifier: x)
        }
        request.sortOrder = sortOrder
        try? self.enumerateContacts(with: request, usingBlock: { contact, _ in
            results.append(contact)
        })
        return results
    }

}
