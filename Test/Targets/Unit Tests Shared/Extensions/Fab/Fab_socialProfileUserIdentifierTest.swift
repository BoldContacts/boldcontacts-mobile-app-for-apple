import XCTest
@testable import BoldContacts

class Fab_socialProfileUserIdentifierTest: XCTestCase {

    func test() throws {
        let x: String = Fab.socialProfileUserIdentifier()
        XCTAssert(!x.isEmpty)
    }

}
