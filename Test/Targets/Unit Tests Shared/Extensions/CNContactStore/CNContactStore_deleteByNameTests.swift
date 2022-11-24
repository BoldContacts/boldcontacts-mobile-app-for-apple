import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_deleteByNameTest: XCTestCase {

    func fabContact(_ store: CNContactStore) -> CNMutableContact {
        let contact = CNMutableContact()
        contact.givenName = "alfa"
        contact.familyName = "bravo"
        let result: Bool = store.create(contact: contact)
        XCTAssertTrue(result)
        return contact
    }

    func testSuccess() throws {
        let store = CNContactStore()
        let _ = fabContact(store)
        let actual1: Bool = store.deleteByName("alfa bravo")
        XCTAssertTrue(actual1)
        let actual2: Bool = store.deleteByName("alfa bravo")
        XCTAssertFalse(actual2)
    }

    func testFailure() throws {
        let store = CNContactStore()
        let _ = fabContact(store)
        let actual: Bool = store.deleteByName("charlie delta")
        XCTAssertFalse(actual)
    }

}
