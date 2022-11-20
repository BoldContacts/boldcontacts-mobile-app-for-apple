import XCTest

class String_xtrim: XCTestCase {

    func test() throws {
        XCTAssertEqual("  foo  goo  ".xtrim, "foogoo")
    }

}
