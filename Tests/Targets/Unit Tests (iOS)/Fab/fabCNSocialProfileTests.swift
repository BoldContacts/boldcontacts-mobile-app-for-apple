import XCTest
@testable import BoldContacts

class fabCNSocialProfile_Tests: XCTestCase {

    func test() throws {
        let x: CNSocialProfile = fabCNSocialProfile()
        XCTAssert(!x.urlString.isEmpty)
        XCTAssert(!x.username.isEmpty)
        XCTAssert(!x.userIdentifier.isEmpty)
        XCTAssert(!x.service.isEmpty)
    }

}
