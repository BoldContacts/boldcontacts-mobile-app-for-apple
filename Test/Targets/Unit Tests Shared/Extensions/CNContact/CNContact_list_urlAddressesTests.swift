import XCTest
import Contacts
@testable import BoldContacts

final class CNContact_list_urlAddressesTest: XCTestCase {

    func test_hasUrlAddress_sans_index() throws {
        let contact = CNContact()
        let x: Bool = contact.hasUrlAddress()
        XCTAssertFalse(x)
    }

    func test_hasUrlAddress_with_index() throws {
        let contact = CNContact()
        let x: Bool = contact.hasUrlAddress(index: 1)
        XCTAssertFalse(x)
    }

    func test_getUrlAddress_sans_index() throws {
        let contact = CNContact()
        let x: CNLabeledValue? = contact.getUrlAddress()
        XCTAssertNil(x)
    }

    func test_getUrlAddress_with_index() throws {
        let contact = CNContact()
        let x: CNLabeledValue? = contact.getUrlAddress(index: 1)
        XCTAssertNil(x)
    }

    func test_getUrlAddressValue_sans_index() throws {
        let contact = CNContact()
        let x: NSString? = contact.getUrlAddressValue()
        XCTAssertNil(x)
    }

    func test_getUrlAddressValue_with_index() throws {
        let contact = CNContact()
        let x: NSString? = contact.getUrlAddressValue(index: 1)
        XCTAssertNil(x)
    }

}
