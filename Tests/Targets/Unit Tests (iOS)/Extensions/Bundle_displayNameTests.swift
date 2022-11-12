import XCTest
@testable import BoldContacts

final class Bundle_diplayNameTests: XCTestCase {

    func test() throws {
        let name: String  = Bundle.main.displayName!
        XCTAssert(!name.isEmpty)
    }

}
