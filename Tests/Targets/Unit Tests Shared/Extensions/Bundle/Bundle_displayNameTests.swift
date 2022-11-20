import XCTest
@testable import BoldContacts

final class Bundle_diplayNameTest: XCTestCase {

    func test() throws {
        // TODO figure out why display name is empty, and also change it to anything non-empty
        XCTAssertEqual(Bundle.main.displayName, Optional(""))
    }

}
