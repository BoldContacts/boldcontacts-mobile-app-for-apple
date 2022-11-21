import XCTest
@testable import BoldContacts

final class NSImage_jpegDataTest: XCTestCase {

    func test() throws {
        let image = NSImage(named: "empty")!
        let actual = image.jpegData(compressionQuality: 1.0)
        XCTAssertNotNil(actual)
    }

}
