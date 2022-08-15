import Contacts

// List contacts by using contact store containers and unified contacts.
//
// Example usage:
//
//     import ContactTools
//     func getPhoneNumbers() -> [String] {
//
//         let contacts = ContactTools.find()
//         var results = [String]()
//         for contact in contacts {
//             for x: CNLabeledValue in contact.phoneNumbers {
//                 if let value  = x.value as? CNPhoneNumber {
//                     results.append(value)
//                 }
//             }
//         }
//         return results
//     }
//
// Example to update a UI:
//
//     DispatchQueue.main.async {
//         // Update the app tableView that shows the data
//         self.tableView.reloadData()
//     }
//
// Return: an array of contacts
//
public func findViaContainers() -> [CNContact] {

    // Get the current user's default contact store.
    let store = CNContactStore()

    // The results list will hold all the discovered contacts.
    var results = [CNContact]()

    // TODO what are containers?
    var allContainers: [CNContainer] = []
    do {
        allContainers = try store.containers(matching: nil)
    } catch {
        findViaContainersFailureAllContainers(error: String(describing: error))
    }

    for container in allContainers {
        let fetchPredicate = CNContact.predicateForContactsInContainer(
            withIdentifier: container.identifier
        )
        do {
            let containerResults = try store.unifiedContacts(
                matching: fetchPredicate,
                keysToFetch: CNContactStore.keysToFetch()
            )
            results.append(contentsOf: containerResults)
        } catch {
            findViaContainersFailureOneContainer(error: String(describing: error))
        }
    }

    do {
        let predicate = CNContact.predicateForContacts(matchingName: "Alice Adams")
        let contacts = try store.unifiedContacts(
            matching: predicate,
            keysToFetch: CNContactStore.keysToFetch()
        )
        print("Fetched contacts: \(contacts)")
        //TODO fix
        // results.append(contacts)
    } catch {
        findViaContainersFailureFetchContact(error: String(describing: error))
    }
    return results
}

private func findViaContainersFailureOneContainer(error: String) {
    logger.error(
        """
        findViaContainers findViaContainersFailureOneContainer.
        code: 3b53388dd32b5d570c6ccc1990ebea28
        error: \(error)
        """
    )
}

private func findViaContainersFailureAllContainers(error: String) {
    logger.error(
        """
        findViaContainers findViaContainersFailureAllContainers.
        code: 55321e0b822b7f36917e5f5fc1ab07f5
        error: \(error)
        """
    )
}

private func findViaContainersFailureFetchContact(error: String) {
    logger.error(
        """
        findViaContainers findViaContainersFailureFetchContact.
        code: 2cbaac9e4b5c3adfe693264ce3195b98
        error: \(error)
        """
    )
}
