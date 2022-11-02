import XCTest
@testable import BoldContacts

class fabUnitedStatesStateCodeAsStringTests: XCTestCase {

    func test() throws {
        let x: String = fabUnitedStatesStateCodeAsString()
        XCTAssert(!x.isEmpty)
    }

}
