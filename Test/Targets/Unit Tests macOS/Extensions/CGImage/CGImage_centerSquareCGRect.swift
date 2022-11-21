import XCTest
@testable import BoldContacts

final class CGImage_centerSquareCGRect: XCTestCase {
    
    func test() throws {
        let width = 11 // prime
        let height = 23 // prime
        let image = CGImage(width: width, height: height)!
        let actual = image.centerSquareCGRect()
        XCTAssertEqual(actual.width, width)
        XCTAssertEqual(actual.height, width)
    }
    
}
