import XCTest
import Contacts
@testable import BoldContacts

class fabCNContactPhoneNumbersTest: XCTestCase {

    func test() throws {
        let x: [CNLabeledValue<CNPhoneNumber>] = fabCNContactPhoneNumbers()
        XCTAssertGreaterThan(0, x.count)
        for lv: CNLabeledValue<CNPhoneNumber> in x {
            let label: String? = lv.label
            XCTAssertNotNil(label)
            let value: CNPhoneNumber = lv.value
            XCTAssert(value.stringValue.contains("555"))
        }
    }

}
