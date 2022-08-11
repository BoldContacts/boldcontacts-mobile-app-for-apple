import Contacts

extension CNContactStore {

    /// Delete a contact.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     CNContactStore.delete(contact)
    ///
    public class func delete(contact: CNMutableContact) {
        let store = CNContactStore()
        let saveRequest = CNSaveRequest()
        saveRequest.delete(contact)
        do {
            CNContactStore.deleteTry(contact: contact)
            try store.execute(saveRequest)
            CNContactStore.deleteSuccess(contact: contact)
        } catch {
            CNContactStore.deleteFailure(contact: contact, error: String(describing: error))
        }
    }

    public class func deleteTry(contact: CNMutableContact) {
        logger.debug(
            """
            CNContactStore deleteTry.
            code: 5c4da6d521c55597f12379590221854e
            contact: \(contact)
            """
        )
    }

    public class func deleteSuccess(contact: CNMutableContact) {
        logger.info(
            """
            CNContactStore deleteSuccess.
            code: 0aee8912d76917384df9ea8fa8d5164f
            contact: \(contact)
            """
        )
    }
    
    public class func deleteFailure(contact: CNMutableContact, error: String) {
        logger.error(
            """
            CNContactStore deleteFailure.
            code: ee619abaa4e229b260a8815767b257bc
            contact: \(contact)
            error: \(error)
            """
        )
    }

}
