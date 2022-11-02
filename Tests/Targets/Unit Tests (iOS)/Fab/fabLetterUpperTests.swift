import XCTest
@testable import BoldContacts

class fabLetterUpperTests: XCTestCase {

    func test() throws {
        let x: String = fabLetterUpper()
        XCTAssertEqual(1, x.count)
    }

}
