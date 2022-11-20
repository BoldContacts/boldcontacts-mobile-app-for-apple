import XCTest
@testable import BoldContacts

class fabBirthdayDateComponentsTests: XCTestCase {

    func test() throws {
        let x: DateComponents = fabBirthdateAsDateComponents()
        XCTAssertNotNil(x.year)
        XCTAssertNotNil(x.month)
        XCTAssertNotNil(x.day)
    }

}
