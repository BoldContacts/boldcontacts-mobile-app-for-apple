import XCTest
@testable import BoldContacts

class Fab_birthdayDateComponentsTest: XCTestCase {

    func test() throws {
        let x: DateComponents = Fab.birthdateAsDateComponents()
        XCTAssertNotNil(x.year)
        XCTAssertNotNil(x.month)
        XCTAssertNotNil(x.day)
    }

}
