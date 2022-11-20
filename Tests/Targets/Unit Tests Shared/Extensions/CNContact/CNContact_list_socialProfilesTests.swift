import XCTest
import Contacts
@testable import BoldContacts

final class CNContact_list_socialProfilesTests: XCTestCase {

    func test_hasSocialProfile_sans_index() throws {
        let contact = CNContact()
        let x: Bool = contact.hasSocialProfile()
        XCTAssertFalse(x)
    }

    func test_hasSocialProfile_with_index() throws {
        let contact = CNContact()
        let x: Bool = contact.hasSocialProfile(index: 1)
        XCTAssertFalse(x)
    }

    func test_getSocialProfile_sans_index() throws {
        let contact = CNContact()
        let x: CNLabeledValue? = contact.getSocialProfile()
        XCTAssertNil(x)
    }

    func test_getSocialProfile_with_index() throws {
        let contact = CNContact()
        let x: CNLabeledValue? = contact.getSocialProfile(index: 1)
        XCTAssertNil(x)
    }

    func test_getSocialProfileValue_sans_index() throws {
        let contact = CNContact()
        let x: CNSocialProfile? = contact.getSocialProfileValue()
        XCTAssertNil(x)
    }

    func test_getSocialProfileValue_with_index() throws {
        let contact = CNContact()
        let x: CNSocialProfile? = contact.getSocialProfileValue(index: 1)
        XCTAssertNil(x)
    }

}
