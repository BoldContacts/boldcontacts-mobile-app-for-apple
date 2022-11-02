import XCTest
import Contacts
@testable import BoldContacts

class CNContactStore_deleteByNameTests: XCTestCase {

    func testSuccess() throws {
        let contact = CNMutableContact()
        contact.givenName = "alfa"
        contact.familyName = "bravo"
        let store = CNContactStore()
        let actual: Bool = store.deleteByName(name: "alfa bravo")
        XCTAssertTrue(actual)
    }

    func testFailure() throws {
        let contact = CNMutableContact()
        contact.givenName = "alfa"
        contact.familyName = "bravo"
        let store = CNContactStore()
        let actual: Bool = store.deleteByName(name: "charlie delta")
        XCTAssertFalse(actual)
    }

}
