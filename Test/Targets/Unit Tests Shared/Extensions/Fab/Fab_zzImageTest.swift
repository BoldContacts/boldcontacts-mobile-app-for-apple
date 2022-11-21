import XCTest
@testable import BoldContacts

class Fab_zzImageTest: XCTestCase {

    func test() throws {
        let x: ZZImage? = Fab.zzImage()
        XCTAssertNotNil(x)
    }

}
