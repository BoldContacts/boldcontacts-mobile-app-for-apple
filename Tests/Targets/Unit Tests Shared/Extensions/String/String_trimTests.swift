import XCTest

class String_trim: XCTestCase {

    func test() throws {
        XCTAssertEqual("  foo  goo  ".trim, "foo  goo")
    }

}
