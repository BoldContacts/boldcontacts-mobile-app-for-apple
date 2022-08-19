import XCTest
import Contacts

class CNContact_list_phoneNumbersTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_hasPhoneNumber_sans_index() throws {
        let contact = CNContact()
        let x = contact.hasPhoneNumber()
        XCTAssertFalse(x)
    }

    func test_hasPhoneNumber_with_index() throws {
        let contact = CNContact()
        let x = contact.hasPhoneNumber(index: 1)
        XCTAssertFalse(x)
    }

    func test_getPhoneNumber_sans_index() throws {
        let contact = CNContact()
        let x = contact.getPhoneNumber()
        XCTAssertNil(x)
    }

    func test_getPhoneNumber_with_index() throws {
        let contact = CNContact()
        let x = contact.getPhoneNumber(index: 1)
        XCTAssertNil(x)
    }

    func test_getPhoneNumberValue_sans_index() throws {
        let contact = CNContact()
        let x = contact.getPhoneNumberValue()
        XCTAssertNil(x)
    }

    func test_getPhoneNumberValue_with_index() throws {
        let contact = CNContact()
        let x = contact.getPhoneNumberValue(index: 1)
        XCTAssertNil(x)
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }

}
