import Contacts

extension CNContactStore {
    
    /// Delete contacts by a matching name.
    ///
    /// Example:
    ///
    ///     CNContactStore.deleteByName(name: "Alice")
    ///
    public class func deleteByName(name: String) {
        let store = CNContactStore()
        let fetchRequest = CNContactFetchRequest(keysToFetch: [CNContactFormatter.descriptorForRequiredKeys(for: .fullName)])
        fetchRequest.predicate = CNContact.predicateForContacts(matchingName: name)
        fetchRequest.mutableObjects = true
        try? store.enumerateContacts(with: fetchRequest, usingBlock: { contact, _ in
            let saveRequest = CNSaveRequest()
            saveRequest.delete(contact.mutableCopy() as! CNMutableContact)
            do {
                deleteByNameTry(name: name, contact: contact)
                try store.execute(saveRequest)
                deleteByNameSuccess(name: name, contact: contact)
            } catch {
                deleteByNameFailure(name: name, contact: contact, error: String(describing: error))
            }
        })
    }

    public class func deleteByNameTry(
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

    public class func deleteByNameSuccess(
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

    public class func deleteByNameFailure(
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
