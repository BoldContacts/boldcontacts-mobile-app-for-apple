import XCTest
@testable import BoldContacts

final class Data_repeatsTest: XCTestCase {

    func test() throws {
        let data = Data([0x01, 0x02])
        let actual = data.repeats(3)
        let expect = Data([0x01, 0x02, 0x01, 0x02, 0x01, 0x02])
        XCTAssertEqual(actual, expect)
    }

}
