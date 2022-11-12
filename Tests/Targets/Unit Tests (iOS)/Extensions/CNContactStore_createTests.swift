import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_createTests: XCTestCase {

    func fabContact(_ store: CNContactStore) -> CNMutableContact {
        let contact = CNMutableContact()
        contact.givenName = "test"
        let result: Bool = store.create(contact: contact)
        XCTAssertTrue(result)
        return contact
    }

    func testSuccess() throws {
        let store = CNContactStore()
        let contact = fabContact(store)
        let actual: Bool = store.create(contact: contact)
        XCTAssertTrue(actual)
    }

    func testFailure() throws {
        let store = CNContactStore()
        let contact = fabContact(store)
        let actual: Bool = store.create(contact: contact)
        XCTAssertFalse(actual)
    }


}
