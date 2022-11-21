import XCTest
@testable import BoldContacts

class Fab_skiNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.skiName()
        XCTAssert(!x.isEmpty)
    }

}
