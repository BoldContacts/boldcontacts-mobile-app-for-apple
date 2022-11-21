import XCTest
@testable import BoldContacts

class Fab_phoneNumberAreaCodeAsStringTest: XCTestCase {

    func test() throws {
        let x: String = Fab.phoneNumberAreaCodeAsString()
        XCTAssert(!x.isEmpty)
    }

}
