import XCTest
@testable import BoldContacts

class fabUnitedStatesStreetTypeNameTests: XCTestCase {

    func test() throws {
        let x: String = fabUnitedStatesStreetTypeName()
        XCTAssert(!x.isEmpty)
    }

}
