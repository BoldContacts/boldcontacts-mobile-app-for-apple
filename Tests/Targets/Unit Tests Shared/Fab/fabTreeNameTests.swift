import XCTest
@testable import BoldContacts

class fabTreeNameTests: XCTestCase {

    func test() throws {
        let x: String = fabTreeName()
        XCTAssert(!x.isEmpty)
    }

}
