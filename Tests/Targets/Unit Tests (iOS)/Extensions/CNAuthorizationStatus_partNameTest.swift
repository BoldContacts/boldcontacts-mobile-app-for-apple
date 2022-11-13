import XCTest
import Contacts

final class CNAuthorizationStatus_partNameTest: XCTestCase {

    func test() throws {
        XCTAssertEqual(CNAuthorizationStatus.authorized.partName(), Optional("authorized"))
        XCTAssertEqual(CNAuthorizationStatus.notDetermined.partName(), Optional("notDetermined"))
        XCTAssertEqual(CNAuthorizationStatus.restricted.partName(), Optional("restricted"))
        XCTAssertEqual(CNAuthorizationStatus.denied.partName(), Optional("denied"))
    }

}
