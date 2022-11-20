import XCTest
@testable import BoldContacts

class Fab_socialProfileURLStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.socialProfileURLString()
        XCTAssert(!x.isEmpty)
    }

}
