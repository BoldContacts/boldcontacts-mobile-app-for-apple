import XCTest
@testable import BoldContacts

class Fab_sfSymbolsLetterCircleTest: XCTestCase {

    func test() throws {
        let x: String = Fab.sfSymbolsLetterCircle()
        XCTAssert(!x.isEmpty)
    }

}
