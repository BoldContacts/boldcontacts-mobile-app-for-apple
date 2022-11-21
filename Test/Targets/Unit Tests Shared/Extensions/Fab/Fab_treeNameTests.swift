import XCTest
@testable import BoldContacts

class fabTreeNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.TreeName()
        XCTAssert(!x.isEmpty)
    }

}
