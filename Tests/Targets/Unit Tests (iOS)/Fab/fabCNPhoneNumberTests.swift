import XCTest
import Contacts
@testable import BoldContacts

class fabCNPhoneNumberTests: XCTestCase {

    func test() throws {
        let x: CNPhoneNumber = fabCNPhoneNumber()
        XCTAssert(!x.stringValue.isEmpty)
    }

}

