import XCTest
import Contacts
@testable import BoldContacts

final class CNContact_fullName_Test: XCTestCase {

    func test() throws {
        let x = CNMutableContact()
        x.givenName = "alfa"
        x.middleName = "bravo"
        x.familyName = "charlie"
        let y: CNContact = x
        let expect = "alfa bravo charlie"
        let actual = y.fullName()
        XCTAssertEqual(actual, expect)
    }

}
