import XCTest
@testable import BoldContacts

class Fab_letterUpperTest: XCTestCase {

    func test() throws {
        let x: String = Fab.letterUpper()
        XCTAssertEqual(1, x.count)
    }

}
