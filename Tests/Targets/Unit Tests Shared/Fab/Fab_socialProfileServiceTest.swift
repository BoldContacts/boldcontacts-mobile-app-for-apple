import XCTest
@testable import BoldContacts

class Fab_socialProfileServiceTest: XCTestCase {

    func test() throws {
        let x: String = Fab.socialProfileService()
        XCTAssert(!x.isEmpty)
    }

}
