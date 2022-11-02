import XCTest
@testable import BoldContacts

class fabLetterLowerTests: XCTestCase {

    func test() throws {
        let x: String = fabLetterLower()
        XCTAssertEqual(1, x.count)
    }

}
