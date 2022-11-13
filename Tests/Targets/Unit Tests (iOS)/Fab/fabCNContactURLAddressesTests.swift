import XCTest
import Contacts
@testable import BoldContacts

class fabCNContactURLAddressesTest: XCTestCase {

    func test() throws {
        let x: [CNLabeledValue<NSString>] = fabCNContactURLAddresses()
        XCTAssertGreaterThan(x.count, 0)
        for lv: CNLabeledValue<NSString> in x {
            let label: String? = lv.label
            XCTAssertNotNil(label)
            let value: NSString = lv.value
            XCTAssert(value.contains("://"))
        }
    }

}
