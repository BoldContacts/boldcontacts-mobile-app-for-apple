import XCTest
import Contacts

final class CNAuthorizationStatus_fullNameTest: XCTestCase {

    func test() throws {
        XCTAssertEqual(CNAuthorizationStatus.authorized.partName(), "CNAuthorizationStatus.authorized")
        XCTAssertEqual(CNAuthorizationStatus.notDetermined.partName(), "CNAuthorizationStatus.notDetermined")
        XCTAssertEqual(CNAuthorizationStatus.restricted.partName(), "CNAuthorizationStatus.restricted")
        XCTAssertEqual(CNAuthorizationStatus.denied.partName(), "CNAuthorizationStatus.denied")
    }

}
