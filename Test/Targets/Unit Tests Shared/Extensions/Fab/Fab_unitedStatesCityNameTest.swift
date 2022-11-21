import XCTest
@testable import BoldContacts

class Fab_unitedStatesCityNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.unitedStatesCityName()
        XCTAssert(!x.isEmpty)
    }

}
