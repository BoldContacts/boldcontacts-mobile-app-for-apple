import XCTest
@testable import BoldContacts

class fabSkiNameTests: XCTestCase {

    func test() throws {
        let x: String = fabSkiName()
        XCTAssert(!x.isEmpty)
    }

}
