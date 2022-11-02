import XCTest
import Contacts
@testable import BoldContacts

class CNContactStore_deleteTests: XCTestCase {

    func testSuccess() throws {
        let contact = CNMutableContact()
        CNContactStore.create(contact: contact)
        let actual: Bool = CNContactStore.delete(contact: contact)
        XCTAssertTrue(actual)
    }

    func testFailure() throws {
        let contact = CNMutableContact()
        let actual: Bool = CNContactStore.delete(contact: contact)
        XCTAssertFalse(actual)
    }

}
