import XCTest

class String_urlSafe: XCTestCase {

    func test() throws {
        let string = "abc 123 + ñ % @"
        let expect = "abc%20123%20%2B%20%C3%B1%20%25%20%40"
        let actual = string.urlSafe
        XCTAssertEqual(actual, Optional(expect))
    }

}
