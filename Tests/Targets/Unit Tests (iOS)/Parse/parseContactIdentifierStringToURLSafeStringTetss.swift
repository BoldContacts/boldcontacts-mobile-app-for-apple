import XCTest
@testable import BoldContacts

class parseContactIdentifierStringToURLSafeStringTests: XCTestCase {

    func test_parseContactIdentifierStringToURLSafeString_OK() throws {
        let string = "1234567890-ABCDEF"
        let expect = "1234567890-ABCDEF"
        let actual = parseContactIdentifierStringToURLSafeString(string: string)
        XCTAssertEqual(expect, actual)
    }

}
