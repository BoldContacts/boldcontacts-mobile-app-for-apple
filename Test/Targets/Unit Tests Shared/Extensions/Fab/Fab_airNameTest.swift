import XCTest
@testable import BoldContacts

class Fab_airNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.airName()
        XCTAssert(!x.isEmpty)
    }

}
