import XCTest
@testable import BoldContacts

final class UIImage_cropToCenterSquareTest: XCTestCase {

    func test() throws {
        let image: UIImage = UIImage(systemName: "star.fill")!
        XCTAssertNotEqual(image.size.width, image.size.height)
        let actual: UIImage = image.cropToCenterSquare()!
        XCTAssertEqual(actual.size.width, actual.size.height)
    }

}
