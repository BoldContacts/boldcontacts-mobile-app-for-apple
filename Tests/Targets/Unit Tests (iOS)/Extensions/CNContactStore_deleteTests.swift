import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_deleteTests: XCTestCase {

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
        let contact = fabContact(store)
        let actual1: Bool = store.delete(contact: contact)
        XCTAssertTrue(actual1)
        let actual2: Bool = store.delete(contact: contact)
        XCTAssertFalse(actual2)
    }

    func testFailure() throws {
        let store = CNContactStore()
        let _ = fabContact(store)
        let invalid = CNMutableContact()
        let actual: Bool = store.delete(contact: invalid)
        XCTAssertFalse(actual)
    }

}
