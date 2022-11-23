import XCTest
@testable import BoldContacts

final class NSApplication_canOpenURLTest: XCTestCase {

    func test() throws {
        XCTAssert(NSApplication.shared.canOpenURL(URL(string: "facetime://example.com")!))
        XCTAssert(NSApplication.shared.canOpenURL(URL(string: "mailto://example.com")!))
        XCTAssert(NSApplication.shared.canOpenURL(URL(string: "tel://example.com")!))
        XCTAssert(NSApplication.shared.canOpenURL(URL(string: "zoom://example.com")!))
        XCTAssert(NSApplication.shared.canOpenURL(URL(string: "skype://example.com")!))
        XCTAssert(!NSApplication.shared.canOpenURL(URL(string: "invalid://example.com")!))
    }

}
