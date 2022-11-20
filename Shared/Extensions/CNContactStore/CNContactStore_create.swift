import Contacts

extension CNContactStore {

    /// Create a contact.
    ///
    /// Return true=success or false=failure.
    ///
    /// Example:
    ///
    ///     let store = CNContactStore()
    ///     let contact: CNContact = …
    ///     store.create(contact)
    ///
    public func create(contact: CNMutableContact) -> Bool {
        let saveRequest = CNSaveRequest()
        saveRequest.add(contact, toContainerWithIdentifier: nil)
        do {
            self.createTry(contact: contact)
            try self.execute(saveRequest)
            self.createSuccess(contact: contact)
            return true
        } catch {
            self.createFailure(contact: contact, error: String(describing: error))
        }
        return false
    }

    public func createTry(contact: CNMutableContact) {
        logger.info(
            """
            CNContactStore createTry.
            code: f70668820474b7d9d23e9b0c4e775abe
            contact: \(contact)
            """
        )
    }

    public func createSuccess(contact: CNMutableContact) {
        logger.info(
            """
            CNContactStore createSuccess.
            code: 70170d2bc9b0b02facef4c2ba3cd226f
            contact: \(contact)
            """
        )
    }
    
    public func createFailure(contact: CNMutableContact, error: String) {
        logger.error(
            """
            CNContactStore createFailure.
            code: 9ff005ef6b9a88a668a818eb57ebc05d
            contact: \(contact)
            error: \(error)
            """
        )
    }

}
