import XCTest
@testable import BoldContacts

final class CharacterSet_uriTests: XCTestCase {

    func test_uriUnreserveds() throws {
        let _: CharacterSet = CharacterSet.uriUnreserveds
    }

    func test_uriReserveds() throws {
        let _: CharacterSet = CharacterSet.uriReserveds
    }

    func test_uriGenericDelimiters() throws {
        let _: CharacterSet = CharacterSet.uriGenericDelimiters
    }

    func test_uriSubcomponentDelimiters() throws {
        let _: CharacterSet = CharacterSet.uriSubcomponentDelimiters
    }

}
