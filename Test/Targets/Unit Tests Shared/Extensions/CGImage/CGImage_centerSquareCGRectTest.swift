import XCTest
@testable import BoldContacts

final class CGImage_centerSquareCGRectTest: XCTestCase {
    
    func test() throws {
        let width: Int = 5 // intentionally prime
        let height: Int = 7 // intentionally prime
        let side = min(width, height)
        let image = CGImage.initWithRGBA32Components(r: 0, g: 0, b: 0, a: 0, width: width, height: height)!
        let actual = image.centerSquareCGRect()
        XCTAssertEqual(Int(actual.width), side)
        XCTAssertEqual(Int(actual.height), side)
    }
    
}
