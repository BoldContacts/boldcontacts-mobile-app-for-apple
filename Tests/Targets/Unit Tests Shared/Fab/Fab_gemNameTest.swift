import XCTest
@testable import BoldContacts

class Fab_gemNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.gemName()
        XCTAssert(!x.isEmpty)
    }

}
