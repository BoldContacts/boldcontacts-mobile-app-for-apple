import XCTest
@testable import BoldContacts

final class IntoThumbnail: XCTestCase {

    func test() throws {
        let contact = Fab.cnMutableContactDeep()
        let thumbnail = contact.intoThumbnail()
        XCTAssertNotNil(thumbnail)
    }
    
}
