import XCTest
import Contacts
@testable import BoldContacts

class fabCNMutableContactTests: XCTestCase {

    func test() throws {
        let x: CNMutableContact = fabCNMutableContact()
        XCTAssertNotNil(x)
    }

}
