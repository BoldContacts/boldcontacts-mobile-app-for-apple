import XCTest
@testable import BoldContacts

class fabEmailAddressAsStringTests: XCTestCase {

    func test() throws {
        let x: String = fabEmailAddressAsString()
        XCTAssert(!x.isEmpty)
    }

}
