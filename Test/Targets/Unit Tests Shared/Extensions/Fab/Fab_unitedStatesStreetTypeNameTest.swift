import XCTest
@testable import BoldContacts

class Fab_unitedStatesStreetTypeNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.unitedStatesStreetTypeName()
        XCTAssert(!x.isEmpty)
    }

}
