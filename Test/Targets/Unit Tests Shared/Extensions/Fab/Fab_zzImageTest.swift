import XCTest
@testable import BoldContacts

final class Fab_zzImageTest: XCTestCase {

    func test() throws {
        let x: ZZImage? = Fab.zzImage()
        XCTAssertNotNil(x)
    }

}
