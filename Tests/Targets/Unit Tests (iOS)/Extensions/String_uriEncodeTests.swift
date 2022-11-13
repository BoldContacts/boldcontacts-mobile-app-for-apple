import XCTest

class String_uriEncode: XCTestCase {
    
    func test() throws {
        XCTAssertEqual("alice@example.com".uriEncode, "alice%40example.com")
    }

    // Stable characters

    func testAlphaNumerics() throws {
        XCTAssertEqual("abc123".uriEncode, "abc123")
    }

    func testCaret() throws {
        XCTAssertEqual("^".uriEncode, "^")
    }
    
    func testHyphen() throws {
        XCTAssertEqual("-".uriEncode, "-")
    }

    func testPeriod() throws {
        XCTAssertEqual(".".uriEncode, ".")
    }

    func testTilde() throws {
        XCTAssertEqual("~".uriEncode, "~")
    }

    func testUnderscore() throws {
        XCTAssertEqual("_".uriEncode, "_")
    }

    // Converted characters that are especially important to us

    func testAt() throws {
        XCTAssertEqual("@".uriEncode, "%40")
    }

    func testNumberSign() throws {
        XCTAssertEqual("#".uriEncode, "%23")
    }

    func testPercent() throws {
        XCTAssertEqual("%".uriEncode, "%25")
    }

    func testPlus() throws {
        XCTAssertEqual("+".uriEncode, "%2B")
    }

    func testSpace() throws {
        XCTAssertEqual(" ".uriEncode, "%20")
    }

}
