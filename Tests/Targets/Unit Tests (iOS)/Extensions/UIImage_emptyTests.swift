import XCTest
@testable import BoldContacts

class UIImage_emptyTests: XCTestCase {

    func test() throws {
        let size = CGSize(width: 1, height: 1)
        let image = UIImage.empty(with: size)
        XCTAssertNotNil(image)
    }

}
