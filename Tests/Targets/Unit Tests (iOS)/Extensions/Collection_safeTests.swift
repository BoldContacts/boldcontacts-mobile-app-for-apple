import XCTest
@testable import BoldContacts

final class Collection_safeTests: XCTestCase {

    func testExample() throws {
        let x = ["alfa", "bravo", "charlie"]
        let expect = "alfa"
        let actual = x[safe: 0]
        XCTAssertEqual(actual, expect)
    }

}
