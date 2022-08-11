import Contacts

extension CNContactStore {

    /// List contacts.
    ///
    /// Return: a results list of contacts.
    ///
    /// Example:
    ///
    ///     let contacts: [CNContact] = CNContactStore.list()
    ///
    public class func list(keysToFetch: [CNKeyDescriptor] = CNContactStore.keysToFetch()) -> [CNContact] {
        let store = CNContactStore();
        let fetchRequest = CNContactFetchRequest(keysToFetch: keysToFetch)
        var results = [CNContact]()
        try? store.enumerateContacts(with: fetchRequest, usingBlock: { contact, _ in
            results.append(contact)
        })
        return results
    }

}
