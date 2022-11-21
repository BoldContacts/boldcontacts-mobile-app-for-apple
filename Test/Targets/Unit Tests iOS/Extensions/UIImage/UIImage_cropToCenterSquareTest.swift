import XCTest
@testable import BoldContacts

final class UIImage_cropToCenterSquare: XCTestCase {

    func test() throws {
        let image = UIImage(named: "empty")!
        let actual = image.cropToCenterSquare()
        XCTAssertNotNil(actual)
    }

}
