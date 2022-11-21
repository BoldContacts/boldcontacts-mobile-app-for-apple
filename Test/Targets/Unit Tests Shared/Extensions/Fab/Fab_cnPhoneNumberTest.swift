import XCTest
import Contacts
@testable import BoldContacts

class Fab_cnPhoneNumberTest: XCTestCase {

    func test() throws {
        let x: CNPhoneNumber = Fab.cnPhoneNumber()
        XCTAssert(!x.stringValue.isEmpty)
    }

}

