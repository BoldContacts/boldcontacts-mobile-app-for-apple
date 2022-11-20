import XCTest
import Contacts
@testable import BoldContacts

class Fab_cnPostalAddressTest: XCTestCase {

    func test() throws {
        let x: CNPostalAddress = Fab.cnPostalAddress()
        XCTAssert(!x.street.isEmpty)
        XCTAssert(!x.city.isEmpty)
        XCTAssert(!x.state.isEmpty)
        XCTAssert(!x.postalCode.isEmpty)
    }

}
