import XCTest
import Contacts
@testable import BoldContacts

final class CNContactStore_keysToFetchTests: XCTestCase {

    func testExample() throws {
        let keys: [CNKeyDescriptor] = CNContactStore.keysToFetch()
        XCTAssertNotNil(keys)
    }

}
