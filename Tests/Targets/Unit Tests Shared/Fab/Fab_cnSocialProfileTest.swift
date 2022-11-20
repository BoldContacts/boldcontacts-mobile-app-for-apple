import XCTest
import Contacts
@testable import BoldContacts

class Fab_cnSocialProfileTest: XCTestCase {

    func test() throws {
        let x: CNSocialProfile = Fab.cnSocialProfile()
        XCTAssert(!x.urlString.isEmpty)
        XCTAssert(!x.username.isEmpty)
        XCTAssert(!x.userIdentifier.isEmpty)
        XCTAssert(!x.service.isEmpty)
    }

}
