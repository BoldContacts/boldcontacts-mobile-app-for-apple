import XCTest
@testable import BoldContacts

final class IntoThumbnail: XCTestCase {

    func test() throws {
        let contact = fabCNMutableContact()
        XCTAssertNotNil(contact.intoThumbnail())
    }
    
}
