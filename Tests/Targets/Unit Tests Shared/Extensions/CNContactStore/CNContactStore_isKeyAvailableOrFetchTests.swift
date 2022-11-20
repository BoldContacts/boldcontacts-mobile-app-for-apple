import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_isKeyAvailableOrFetchTests: XCTestCase {

    func test() throws {
        let store = CNContactStore()
        let contact = CNContact()
        let key = CNContactEmailAddressesKey
        let expect = store.isKeyAvailableOrFetch(contact: contact, key: key)
        XCTAssertEqual(expect, contact)
    }

}
