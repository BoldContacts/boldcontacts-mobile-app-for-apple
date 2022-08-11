import Contacts

extension CNContactStore {

    /// Create a contact.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     CNContactStore.create(contact)
    ///
    public class func create(contact: CNMutableContact) {
        let store = CNContactStore()
        let saveRequest = CNSaveRequest()
        saveRequest.add(contact, toContainerWithIdentifier: nil)
        do {
            CNContactStore.createTry(contact: contact)
            try store.execute(saveRequest)
            CNContactStore.createSuccess(contact: contact)
        } catch {
            CNContactStore.createFailure(contact: contact, error: String(describing: error))
        }
    }

    public class func createTry(contact: CNMutableContact) {
        logger.info(
            """
            CNContactStore createTry.
            code: f70668820474b7d9d23e9b0c4e775abe
            contact: \(contact)
            """
        )
    }

    public class func createSuccess(contact: CNMutableContact) {
        logger.info(
            """
            CNContactStore createSuccess.
            code: 70170d2bc9b0b02facef4c2ba3cd226f
            contact: \(contact)
            """
        )
    }
    
    public class func createFailure(contact: CNMutableContact, error: String) {
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
