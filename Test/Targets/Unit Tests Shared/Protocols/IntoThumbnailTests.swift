import XCTest
@testable import BoldContacts

final class IntoThumbnailZZImage: XCTestCase {

    func test() throws {
        let contact = Fab.cnMutableContactDeep()
        XCTAssertTrue(contact.imageDataAvailable)
        let image = contact.intoThumbnailZZImage()
        XCTAssertNotNil(image)
    }
    
}
