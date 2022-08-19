import XCTest
import Contacts

class CNContact_list_emailAddressesTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_hasEmailAddress_sans_index() throws {
        let contact = CNContact()
        let x = contact.hasEmailAddress()
        XCTAssertFalse(x)
    }

    func test_hasEmailAddress_with_index() throws {
        let contact = CNContact()
        let x = contact.hasEmailAddress(index: 1)
        XCTAssertFalse(x)
    }

    func test_getEmailAddress_sans_index() throws {
        let contact = CNContact()
        let x = contact.getEmailAddress()
        XCTAssertNil(x)
    }

    func test_getEmailAddress_with_index() throws {
        let contact = CNContact()
        let x = contact.getEmailAddress(index: 1)
        XCTAssertNil(x)
    }

    func test_getEmailAddressValue_sans_index() throws {
        let contact = CNContact()
        let x = contact.getEmailAddressValue()
        XCTAssertNil(x)
    }

    func test_getEmailAddressValue_with_index() throws {
        let contact = CNContact()
        let x = contact.getEmailAddressValue(index: 1)
        XCTAssertNil(x)
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }

}
