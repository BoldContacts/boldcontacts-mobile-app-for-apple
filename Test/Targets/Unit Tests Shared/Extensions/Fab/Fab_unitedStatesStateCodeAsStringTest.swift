import XCTest
@testable import BoldContacts

class Fab_unitedStatesStateCodeAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.unitedStatesStateCodeAsString()
        XCTAssert(!x.isEmpty)
    }

}
