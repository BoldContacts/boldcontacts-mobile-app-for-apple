import XCTest
import Contacts
@testable import BoldContacts

class fabCNContactPostalAddressesTest: XCTestCase {

    func test() throws {
        let x: [CNLabeledValue<CNPostalAddress>] = fabCNContactPostalAddresses()
        XCTAssertGreaterThan(0, x.count)
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
