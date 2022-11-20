import XCTest
import Contacts
@testable import BoldContacts

class Fab_cnContactPostalAddressesTest: XCTestCase {

    func test() throws {
        let x: [CNLabeledValue<CNPostalAddress>] = Fab.cnContactPostalAddresses()
        XCTAssertGreaterThan(x.count, 0)
        for lv: CNLabeledValue<CNPostalAddress> in x {
            let label: String? = lv.label
            XCTAssertNotNil(label)
            let value: CNPostalAddress = lv.value
            XCTAssert(!value.street.isEmpty)
            XCTAssert(!value.city.isEmpty)
            XCTAssert(!value.state.isEmpty)
            XCTAssert(!value.postalCode.isEmpty)
        }
    }

}
