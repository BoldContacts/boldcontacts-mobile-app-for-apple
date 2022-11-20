import Contacts

extension CNContactStore {
    
    /// Delete contacts by a matching name.
    ///
    /// Return true=success or false=failure.
    ///
    /// Example:
    ///
    ///     let store = CNContactStore()
    ///     store.deleteById(id: "4CC899F7-0E35-4C0C-B6A0-128CDEDA9B34:ABPerson")
    ///
    public func deleteById(_ id: String) -> Bool {
        var result = false
        do {
            self.deleteByIdTry(id: id)
            let contact: CNContact = try self.unifiedContact(withIdentifier: id, keysToFetch: [])
            let mutableCopy: CNMutableContact = contact.mutableCopy() as! CNMutableContact
            result = self.delete(contact: mutableCopy)
            if result {
                self.deleteByIdSuccess(id: id, contact: contact)
            } else {
                self.deleteByIdFailure(id: id, error: "result: \(result)")
            }
        }
        catch {
            self.deleteByIdFailure(id: id, error: String(describing: error))
        }
        return result
    }

    public func deleteByIdTry(
        id: String
    ) {
        logger.debug(
            """
            CNContactStore deleteByIdTry.
            code: 5e7c0040d41dc82f77f87b730d06261c
            id: \(id)
            """
        )
    }

    public func deleteByIdSuccess(
        id: String,
        contact: CNContact
    ) {
        logger.info(
            """
            CNContactStore deleteByIdSuccess.
            code: 8c13572fe32878da45586728b3509222
            id: \(id)
            contact: \(contact)
            """
        )
    }

    public func deleteByIdFailure(
        id: String,
        error: String
    ) {
        logger.error(
            """
            CNContactStore deleteByIdFailure.
            code: 9681ed1a5f2d21d0ecab4d3d4c4f7d53
            id: \(id)
            error: \(error)
            """
        )
    }

}
