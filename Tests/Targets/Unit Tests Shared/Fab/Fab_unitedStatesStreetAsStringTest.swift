import XCTest
@testable import BoldContacts

class Fab_unitedStatesStreetAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.unitedStatesStreetAsString()
        XCTAssert(!x.isEmpty)
    }

}
