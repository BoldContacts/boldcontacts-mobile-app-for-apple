import XCTest
@testable import BoldContacts

class Fab_letterLowerTest: XCTestCase {

    func test() throws {
        let x: String = Fab.letterLower()
        XCTAssertEqual(1, x.count)
    }

}
