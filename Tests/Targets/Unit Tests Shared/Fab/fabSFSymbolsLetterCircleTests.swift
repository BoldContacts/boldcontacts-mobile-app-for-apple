import XCTest
@testable import BoldContacts

class fabSFSymbolsLetterCircleTests: XCTestCase {

    func test() throws {
        let x: String = fabSFSymbolsLetterCircle()
        XCTAssert(!x.isEmpty)
    }

}
