import XCTest
@testable import BoldContacts

final class IntoThumbnail: XCTestCase {

    func test() throws {
        let image = UIImage(named: "empty")
        XCTAssertNotNil(image)
        if let x = image {
            let actual: UIImage? = x.intoThumbnail()
            XCTAssertNotNil(actual)
        }
    }
}
