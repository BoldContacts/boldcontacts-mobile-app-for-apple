import XCTest
import Contacts
@testable import BoldContacts

final class CNContact_intoStringTest: XCTestCase {

    func test() throws {
        let x = CNMutableContact()
        x.givenName = "alfa"
        x.middleName = "bravo"
        x.familyName = "charlie"
        let y: CNContact = x
        XCTAssertEqual("alfa bravo charlie", y.intoString())
    }

}
