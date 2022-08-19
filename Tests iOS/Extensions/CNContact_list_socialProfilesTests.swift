import XCTest
import Contacts

class CNContact_list_socialProfilesTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_hasSocialProfile_sans_index() throws {
        let contact = CNContact()
        let x = contact.hasSocialProfile()
        XCTAssertFalse(x)
    }

    func test_hasSocialProfile_with_index() throws {
        let contact = CNContact()
        let x = contact.hasSocialProfile(index: 1)
        XCTAssertFalse(x)
    }

    func test_getSocialProfile_sans_index() throws {
        let contact = CNContact()
        let x = contact.getSocialProfile()
        XCTAssertNil(x)
    }

    func test_getSocialProfile_with_index() throws {
        let contact = CNContact()
        let x = contact.getSocialProfile(index: 1)
        XCTAssertNil(x)
    }

    func test_getSocialProfileValue_sans_index() throws {
        let contact = CNContact()
        let x = contact.getSocialProfileValue()
        XCTAssertNil(x)
    }

    func test_getSocialProfileValue_with_index() throws {
        let contact = CNContact()
        let x = contact.getSocialProfileValue(index: 1)
        XCTAssertNil(x)
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }

}
