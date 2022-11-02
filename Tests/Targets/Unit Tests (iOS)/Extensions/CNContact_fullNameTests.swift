import XCTest
import Contacts
@testable import BoldContacts

class CNContact_fullName_Tests: XCTestCase {

    func test() throws {
        let x = CNMutableContact()
        x.givenName = "alfa"
        x.middleName = "bravo"
        x.familyName = "charlie"
        let y: CNContact = x
        let expect = "alfa bravo charlie"
        let actual = y.fullName()
        XCTAssertEqual(expect, actual)
    }

}
