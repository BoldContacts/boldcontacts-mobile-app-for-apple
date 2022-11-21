import XCTest
@testable import BoldContacts

class Fab_socialProfileUsernameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.socialProfileUsername()
        XCTAssert(!x.isEmpty)
    }

}
