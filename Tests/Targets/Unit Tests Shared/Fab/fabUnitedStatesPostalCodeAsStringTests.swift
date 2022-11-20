import XCTest
@testable import BoldContacts

class fabUnitedStatesPostalCodeAsStringTests: XCTestCase {

    func test() throws {
        let x: String = fabUnitedStatesPostalCodeAsString()
        XCTAssert(!x.isEmpty)
    }

}
