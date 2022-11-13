import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_createTests: XCTestCase {

    func testSuccess() throws {
        let store = CNContactStore()
        let contact = CNMutableContact()
        contact.givenName = "test"
        let actual1: Bool = store.create(contact: contact)
        XCTAssertTrue(actual1)
        let actual2: Bool = store.create(contact: contact)
        XCTAssertFalse(actual2)
    }

    func testFailure() throws {
        let store = CNContactStore()
        let contact = CNMutableContact()
        contact.givenName = "test"
        let _ = store.create(contact: contact)
        let actual: Bool = store.create(contact: contact)
        XCTAssertFalse(actual)
    }


}
