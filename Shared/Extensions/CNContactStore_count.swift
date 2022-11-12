import Contacts

/// Count the number of contacts in a contact store, by iterating.
/// Future idea: replace this funciton with a non-interating API call.
extension CNContactStore {    
    public func count() -> Int? {
        var count: Int = 0
        let request = CNContactFetchRequest(keysToFetch: [])
        do {
            try self.enumerateContacts(with: request) { (contact, error) in
                count += 1
            }
        } catch {
            return nil
        }
        return count
    }
}
