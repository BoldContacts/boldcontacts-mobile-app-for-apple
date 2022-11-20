import XCTest

class String_filterPhoneNumber: XCTestCase {

    func test() throws {
        XCTAssertEqual("+1 (800) 555-5555 *1,2,3 #4,5,6".filterPhoneNumber, "18005555555*1,2,3#4,5,6")
    }

    // Stable characters

    func testAlphaNumerics() throws {
        XCTAssertEqual("abc123".filterPhoneNumber, "abc123")
    }

    func testComma() throws {
        XCTAssertEqual(",".filterPhoneNumber, ",")
    }
    
    func testNumberSign() throws {
        XCTAssertEqual("#".filterPhoneNumber, "#")
    }

    func testAsterisk() throws {
        XCTAssertEqual("*".filterPhoneNumber, "*")
    }

    // Converted characters that are especially important to us

    func testParentheses() throws {
        XCTAssertEqual("()".filterPhoneNumber, "")
    }

    func testPlus() throws {
        XCTAssertEqual("+".filterPhoneNumber, "")
    }

}
