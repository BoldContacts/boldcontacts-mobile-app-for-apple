import XCTest
import Contacts
@testable import BoldContacts

class fabCNContactEmailAddressesTest: XCTestCase {

    func test() throws {
        let x: [CNLabeledValue<NSString>] = fabCNContactEmailAddresses()
        XCTAssertGreaterThan(0, x.count)
        for lv: CNLabeledValue<NSString> in x {
            let label: String? = lv.label
            XCTAssertNotNil(label)
            let value: NSString = lv.value
            XCTAssert(value.contains("@"))
        }
    }

}
