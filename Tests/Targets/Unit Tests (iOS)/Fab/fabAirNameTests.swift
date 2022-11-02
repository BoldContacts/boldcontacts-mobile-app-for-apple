import XCTest
@testable import BoldContacts

class fabAirNameTests: XCTestCase {

    func test() throws {
        let x: String = fabAirName()
        XCTAssert(!x.isEmpty)
    }

}
