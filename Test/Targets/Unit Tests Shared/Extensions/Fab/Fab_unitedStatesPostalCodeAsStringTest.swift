import XCTest
@testable import BoldContacts

class Fab_unitedStatesPostalCodeAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.unitedStatesPostalCodeAsString()
        XCTAssert(!x.isEmpty)
    }

}
