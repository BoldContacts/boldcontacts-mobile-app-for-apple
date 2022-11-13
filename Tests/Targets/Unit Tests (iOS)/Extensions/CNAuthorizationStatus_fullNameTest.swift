import XCTest
import Contacts

final class CNAuthorizationStatus_fullNameTest: XCTestCase {

    func test() throws {
        XCTAssertEqual(CNAuthorizationStatus.authorized.fullName(), Optional("CNAuthorizationStatus.authorized"))
        XCTAssertEqual(CNAuthorizationStatus.notDetermined.fullName(), Optional("CNAuthorizationStatus.notDetermined"))
        XCTAssertEqual(CNAuthorizationStatus.restricted.fullName(), Optional("CNAuthorizationStatus.restricted"))
        XCTAssertEqual(CNAuthorizationStatus.denied.fullName(), Optional("CNAuthorizationStatus.denied"))
    }

}
