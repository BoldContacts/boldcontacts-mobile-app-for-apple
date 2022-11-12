import XCTest
@testable import BoldContacts

final class UIImage_resizeTests: XCTestCase {

    func test() throws {
        let image: UIImage = UIImage(systemName: "star.fill")!
        let size: CGSize = CGSize(width: 10, height: 10)
        let actual = image.resize(targetSize: size)
        XCTAssertNotNil(actual)
    }

}
