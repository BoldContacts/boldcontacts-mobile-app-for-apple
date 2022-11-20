import XCTest
@testable import BoldContacts

class Fab_emailAddressAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.emailAddressAsString()
        XCTAssert(!x.isEmpty)
    }

}
