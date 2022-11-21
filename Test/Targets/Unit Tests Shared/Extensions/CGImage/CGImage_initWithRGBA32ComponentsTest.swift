import XCTest
@testable import BoldContacts

final class CGImage_initWithRGBA32ComponentsTest: XCTestCase {

    func testDefault() throws {
        let image = CGImage.initWithRGBA32Components()
        XCTAssertNotNil(image)
        if let image = image {
            XCTAssertEqual(image.width, 1)
            XCTAssertEqual(image.height, 1)
        }
    }

    func testCustom() throws {
        let r: UInt8 = 0x01
        let g: UInt8 = 0x02
        let b: UInt8 = 0x03
        let a: UInt8 = 0x04
        let width: Int = 2
        let height: Int = 3
        let image = CGImage.initWithRGBA32Components(r: r, g: g, b: b, a: a, width: width, height: height)
        XCTAssertNotNil(image)
        if let image = image {
            XCTAssertEqual(image.width, width)
            XCTAssertEqual(image.height, height)
        }
    }

}
