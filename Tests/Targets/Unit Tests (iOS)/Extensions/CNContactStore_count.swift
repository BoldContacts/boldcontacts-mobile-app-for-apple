import XCTest
import Contacts

final class CNContactStore_count: XCTestCase {

    func test() throws {
        let store = CNContactStore()
        let count = store.count()!
        XCTAssertGreaterThanOrEqual(count, 0)
    }
    
}
