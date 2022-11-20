import XCTest
@testable import BoldContacts

class fabUnitedStatesCityNameTests: XCTestCase {

    func test() throws {
        let x: String = fabUnitedStatesCityName()
        XCTAssert(!x.isEmpty)
    }

}
