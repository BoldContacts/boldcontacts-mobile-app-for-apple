import XCTest
//@testable import BoldContacts

final class NSImage_cropToCenterSquare: XCTestCase {

    func test() throws {
        let image = NSImage(named: "empty")!
        let actual = image.cropToCenterSquare()
        XCTAssertNotNil(actual)
    }

}
