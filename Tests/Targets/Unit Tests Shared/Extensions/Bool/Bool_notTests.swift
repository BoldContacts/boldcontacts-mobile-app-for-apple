import XCTest

final class Bool_notTest: XCTestCase {

    func test() throws {
        XCTAssertTrue(false.not)
        XCTAssertFalse(true.not)
    }

}
