import XCTest
@testable import BoldContacts

final class UIImage_cropToSquareTests: XCTestCase {

    func test() throws {
        let image: UIImage = UIImage(systemName: "star.fill")!
        XCTAssertNotEqual(image.size.width, image.size.height)
        let actual: UIImage = image.cropToSquare()!
        XCTAssertEqual(actual.size.width, actual.size.height)
    }

}
