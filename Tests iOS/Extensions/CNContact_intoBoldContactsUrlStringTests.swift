import XCTest
import Contacts
@testable import BoldContacts

class CNContact_intoBoldContactsUrlString_swift_CNContact_intoBoldContactsUrlStringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testLabelNilAndEmailAddress() throws {
//        let contact = CNMutableContact()
//        let emailAddress = "alice@example.com"
//        contact.emailAddresses = [
//            CNLabeledValue(
//                label: nil,
//                value: emailAddress as NSString
//            ),
//        ]
//        let expect = "mailto://alice@example.com"
//        let actual = contact.intoBoldContactsUrlString()
//        XCTAssertEqual(expect, actual)
//    }
//
//    func testLabelNilAndPhoneNumber() throws {
//        let contact = CNMutableContact()
//        let phoneNumber = "1 (555) 555-5555"
//        contact.phoneNumbers = [
//            CNLabeledValue(
//                label: nil,
//                value: CNPhoneNumber(stringValue: phoneNumber)
//            ),
//        ]
//        let expect = "tel://15555555555"
//        let actual = contact.intoBoldContactsUrlString()
//        XCTAssertEqual(expect, actual)
//    }
//
//    func testLabelNilAndUrlAddress() throws {
//        let contact = CNMutableContact()
//        let urlAddress = "foo://example.com"
//        contact.urlAddresses = [
//            CNLabeledValue(
//                label: nil,
//                value: urlAddress as NSString
//            ),
//        ]
//        let expect = "foo://example.com"
//        let actual = contact.intoBoldContactsUrlString()
//        XCTAssertEqual(expect, actual)
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
