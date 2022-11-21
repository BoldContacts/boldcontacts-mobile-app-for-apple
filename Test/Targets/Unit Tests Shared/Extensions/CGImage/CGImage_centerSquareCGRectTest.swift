import XCTest
@testable import BoldContacts

final class CGImage_centerSquareCGRect: XCTestCase {
    
    func test() throws {
        let width: Int = 11 // prime
        let height: Int = 23 // prime
        let size = CGSize(
            width: CGFloat(integerLiteral: width),
            height: CGFloat(integerLiteral: height)
        )
        
        // RGBA-32 means Red Green Blue Alpha 32-bit color.
        let bitsPerComponent = 8 // i.e. Red 8-bit, Green 8-bit, Blue 8-bit, Alpha 8-bit
        let componentsPerPixel = 4 // i.e. Red, Green, Blue, Alpha
        let bitsPerPixel = bitsPerComponent * componentsPerPixel
        let bytesPerPixel = bitsPerPixel / 8
        let bytesPerRow = Int(size.width) * bytesPerPixel
        let bytesPerImage = Int(size.width) * Int(size.height) * bytesPerPixel
        let bytes = [UInt8](repeating: 0x00, count: bytesPerImage)
        var data = Data(bytes: bytes, count: Int(bytes.count))
        let bitmapInfo = CGImageAlphaInfo.noneSkipLast.rawValue
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let context = CGContext(
            data: &data,
            width: Int(size.width),
            height: Int(size.height),
            bitsPerComponent: bitsPerComponent,
            bytesPerRow: bytesPerRow,
            space: colorSpace,
            bitmapInfo: CGImageAlphaInfo.noneSkipLast.rawValue
        )
          guard let cgImage = self.cgImage else { return nil }
          context?.draw(cgImage, in: CGRect(x: 0, y: 0, width: size.width, height: size.height))

          return pixelData
        
        
        //let data = CFData()
        let provider = CGDataProvider(data: data)
        let intent = CGColorRenderingIntent(rawValue: 0)!
        let image = CGImage(
            width: width,
            height: height,
            bitsPerComponent: bitsPerComponent,
            bitsPerPixel: bitsPerPixel,
            bytesPerRow: bytesPerRow,
            space: space,
            bitmapInfo: bitmapInfo,
            provider: provider,
            decode: nil // UnsafePointer<CGFloat>?,
            shouldInterpolate: false,
            intent: intent
        )!
        let actual = image.centerSquareCGRect()
        XCTAssertEqual(actual.width, width)
        XCTAssertEqual(actual.height, width)
        //CGColorSpaceRelease(space);
    }
    
}
