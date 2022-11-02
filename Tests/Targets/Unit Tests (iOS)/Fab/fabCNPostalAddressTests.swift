import XCTest
import Contacts
@testable import BoldContacts

class fabCNPostalAddressTests: XCTestCase {

    func test() throws {
        let x: CNPostalAddress = fabCNPostalAddress()
        XCTAssert(!x.street.isEmpty)
        XCTAssert(!x.city.isEmpty)
        XCTAssert(!x.state.isEmpty)
        XCTAssert(!x.postalCode.isEmpty)
    }

}
