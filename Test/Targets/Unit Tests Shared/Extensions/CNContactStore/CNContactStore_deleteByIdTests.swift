import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_deleteByIdTest: XCTestCase {
    
    func fabContact(_ store: CNContactStore) -> CNMutableContact {
        let contact = CNMutableContact()
        contact.givenName = "test"
        let result: Bool = store.create(contact: contact)
        XCTAssertTrue(result)
        XCTAssertTrue(contact.isKeyAvailable(CNContactIdentifierKey))
        return contact
    }
    
    func testSuccess() throws {
        let store = CNContactStore()
        let contact = Fab.Contact(store)
        let id = contact.identifier
        let actual1 = store.deleteById(id)
        XCTAssertTrue(actual1)
        let actual2 = store.deleteById(id)
        XCTAssertFalse(actual2)
    }

    func testFailure() throws {
        let store = CNContactStore()
        let _ = Fab.Contact(store)
        let id = "invalid"
        let actual: Bool = store.deleteById(id)
        XCTAssertFalse(actual)
    }

}
