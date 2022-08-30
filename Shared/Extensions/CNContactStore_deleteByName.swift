import Contacts

extension CNContactStore {
    
    /// Delete contacts by a matching name.
    ///
    /// Return true=success or false=failure.
    /// 
    /// Example:
    ///
    ///     let store = CNContactStore()
    ///     store.deleteByName(name: "Alice")
    ///
    public func deleteByName(name: String) -> Bool {
        let fetchRequest = CNContactFetchRequest(keysToFetch: [CNContactFormatter.descriptorForRequiredKeys(for: .fullName)])
        fetchRequest.predicate = CNContact.predicateForContacts(matchingName: name)
        fetchRequest.mutableObjects = true
        var result = false
        try? self.enumerateContacts(with: fetchRequest, usingBlock: { contact, _ in
            let saveRequest = CNSaveRequest()
            saveRequest.delete(contact.mutableCopy() as! CNMutableContact)
            do {
                self.deleteByNameTry(name: name, contact: contact)
                try self.execute(saveRequest)
                self.deleteByNameSuccess(name: name, contact: contact)
                result = true
            } catch {
                self.deleteByNameFailure(name: name, contact: contact, error: String(describing: error))
            }
        })
        return result
    }

    public func deleteByNameTry(
        name: String,
        contact: CNContact
    ) {
        logger.debug(
            """
            CNContactStore deleteByNameTry.
            code: 553896ed805135c84dd9455fdaa92181
            contact: \(contact)
            """
        )
    }

    public func deleteByNameSuccess(
        name: String,
        contact: CNContact
    ) {
        logger.info(
            """
            CNContactStore deleteByNameSuccess.
            code: 553896ed805135c84dd9455fdaa92181
            contact: \(contact)
            """
        )
    }

    public func deleteByNameFailure(
        name: String,
        contact: CNContact,
        error: String
    ) {
        logger.error(
            """
            CNContactStore deleteByNameFailure.
            code: ee619abaa4e229b260a8815767b257bc
            contact: \(contact)
            error: \(error)
            """
        )
    }

}
