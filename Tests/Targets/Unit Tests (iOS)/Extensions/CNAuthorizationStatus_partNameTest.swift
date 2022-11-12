import XCTest
import Contacts

final class CNAuthorizationStatus_partNameTest: XCTestCase {

    func test() throws {
        XCTAssertEqual(CNAuthorizationStatus.authorized.partName(), "authorized")
        XCTAssertEqual(CNAuthorizationStatus.notDetermined.partName(), "notDetermined")
        XCTAssertEqual(CNAuthorizationStatus.restricted.partName(), "restricted")
        XCTAssertEqual(CNAuthorizationStatus.denied.partName(), "denied")
    }

}
