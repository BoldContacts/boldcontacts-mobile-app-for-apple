import XCTest
@testable import BoldContacts

final class UIImage_emptyTest: XCTestCase {

    func test() throws {
        let size = CGSize(width: 1, height: 1)
        let image = UIImage.empty(with: size)
        XCTAssertNotNil(image)
    }

}
