import XCTest
@testable import BoldContacts

final class CGImage_initWithRGBA32DataTest: XCTestCase {

    func testDefault() throws {
        let image = CGImage.initWithRGBA32Data()
        XCTAssertNotNil(image)
        if let image = image {
            XCTAssertEqual(image.width, 1)
            XCTAssertEqual(image.height, 1)
        }
    }

    func testCustom() throws {
        let data = Data([
            0x01, 0x02, 0x03, 0x04,
            0x05, 0x06, 0x07, 0x08,
            0x09, 0x0A, 0x0B, 0x0C,
            0x0D, 0x0E, 0x0F, 0x10,
            0x11, 0x12, 0x13, 0x14,
            0x15, 0x16, 0x17, 0x18,
        ])
        let size = CGSize(width: 2, height: 3)
        let image = CGImage.initWithRGBA32Data(data: data, size: size)
        XCTAssertNotNil(image)
        if let image = image {
            XCTAssertEqual(Int(image.width), Int(size.width))
            XCTAssertEqual(Int(image.height), Int(size.height))
        }
    }

}
