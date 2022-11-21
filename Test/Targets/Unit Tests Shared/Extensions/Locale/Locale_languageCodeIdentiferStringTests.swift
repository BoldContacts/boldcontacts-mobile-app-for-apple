import XCTest

class Locale_languageCodeIdentifierStringTest: XCTestCase {

    func test() throws {
        let actual = Locale.current.languageCodeIdentifierString()
        XCTAssertNotNil(actual)
        if let string = actual {
            XCTAssertNotNil(string)
        }
    }

}
