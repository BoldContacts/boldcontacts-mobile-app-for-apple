import XCTest
@testable import BoldContacts

final class CGImage_initWithRGBA32Test: XCTestCase {

    func testDefault() throws {
        let image = CGImage.initWithRGBA32()
        XCTAssertNotNil(image)
    }

    func testCustom() throws {
        let r: UInt8 = 0x01
        let g: UInt8 = 0x02
        let b: UInt8 = 0x03
        let a: UInt8 = 0x04
        let width: Int = 10
        let height: Int = 20
        let image = CGImage.initWithRGBA32(r: r, g: g, b: b, a: a, width: width, height: height)
        XCTAssertNotNil(image)
    }

}
