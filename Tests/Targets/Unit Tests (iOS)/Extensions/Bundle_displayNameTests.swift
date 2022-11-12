import XCTest
@testable import BoldContacts

final class Bundle_diplayNameTests: XCTestCase {

    func test() throws {
        let option: String?  = Bundle.main.displayName()
        XCTAssertNotNil(option)
        XTCAssert(!(option?.isEmpty()))
    }

}
