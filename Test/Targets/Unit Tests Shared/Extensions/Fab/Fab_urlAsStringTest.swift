import XCTest
@testable import BoldContacts

class Fab_urlAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.urlAsString()
        XCTAssert(!x.isEmpty)
    }

}
