import XCTest
@testable import BoldContacts

class Fab_phoneNumberAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.phoneNumberAsString()
        XCTAssert(!x.isEmpty)
    }

}
