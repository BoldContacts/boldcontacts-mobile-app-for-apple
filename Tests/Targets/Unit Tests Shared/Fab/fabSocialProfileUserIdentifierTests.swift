import XCTest
@testable import BoldContacts

class fabSocialProfileUserIdentifierTests: XCTestCase {

    func test() throws {
        let x: String = fabSocialProfileUserIdentifier()
        XCTAssert(!x.isEmpty)
    }

}
