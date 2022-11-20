import XCTest
import Contacts
@testable import BoldContacts

class Fab_cnContactSocialProfilesTest: XCTestCase {

    func test() throws {
        let x: [CNLabeledValue<CNSocialProfile>] = Fab.cnContactSocialProfiles()
        XCTAssertGreaterThan(x.count, 0)
        for lv: CNLabeledValue<CNSocialProfile> in x {
            let label: String? = lv.label
            XCTAssertNotNil(label)
            let value: CNSocialProfile = lv.value
            XCTAssert(value.urlString.contains("://"))
        }
    }

}
