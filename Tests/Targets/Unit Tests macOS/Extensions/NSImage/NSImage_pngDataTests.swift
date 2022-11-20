import XCTest
@testable import BoldContacts

final class NSImage_pngDataTest: XCTestCase {

    func test() throws {
        let image = NSImage(named: "empty")
        XCTAssertNotNil(image)
        if let x = image {
            let actual = x.pngData()
            XCTAssertNotNil(actual)
        }
    }

}
