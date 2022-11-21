import XCTest
@testable import BoldContacts

final class NSImage_pngDataTest: XCTestCase {

    func test() throws {
        let image = NSImage(named: "empty")!
        let actual = image.pngData()
        XCTAssertNotNil(actual)
    }

}
