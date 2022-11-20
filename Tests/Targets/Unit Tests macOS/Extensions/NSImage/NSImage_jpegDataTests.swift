import XCTest
@testable import BoldContacts

final class NSImage_jpegDataTest: XCTestCase {

    func test() throws {
        let image = NSImage(named: "empty")
        XCTAssertNotNil(image)
        if let x = image {
            let actual = x.jpegData(compressionQuality: 1.0)
            XCTAssertNotNil(actual)
        }
    }

}
