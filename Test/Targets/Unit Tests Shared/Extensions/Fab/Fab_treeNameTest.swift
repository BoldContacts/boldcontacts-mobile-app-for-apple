import XCTest
@testable import BoldContacts

class Fab_treeNameTest: XCTestCase {

    func test() throws {
        let x: String = Fab.treeName()
        XCTAssert(!x.isEmpty)
    }

}
