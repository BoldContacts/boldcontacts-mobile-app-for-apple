import XCTest
@testable import BoldContacts

final class IntoThumbnail: XCTestCase {

    func test() throws {
        let contact = Fab.cnMutableContact()
        XCTAssertNotNil(contact.intoThumbnail())
    }
    
}
