import Foundation
import CoreGraphics

extension CGImage {

    /// Create an image from scratch using RGBA-32 color.
    ///
    /// RGBA-32 means Red Green Blue Alpha 32-bit color.
    ///
    /// Alpha component ordering:
    ///
    ///   * premultipliedFirst means alpha component is first i.e. ARGB
    ///
    ///   * premultipliedLast. means alpha component is last i.e. RGBA
    ///
    /// For Swift 5, two things to pay attention:
    ///
    ///   1. The [UInt8] array is stored in a contiguous region of memory,
    ///   so there's no need to convert it to Data; the pointer can access all bytes directly.
    ///
    ///   2. Int's byte order is little endian currently on all Apple platform,
    ///   but this is not garanteed on other platforms.
    ///
    /// Help: https://www.appsloveworld.com/swift/100/216/creating-cgimage-uiimage-from-grayscale-matrix
    ///
    public static func initWithRGBA32(
        r: UInt8 = 0x00, // red component byte
        g: UInt8 = 0x00, // green component byte
        b: UInt8 = 0x00, // blue component byte
        a: UInt8 = 0x00, // alpha component byte
        width: Int = 1, // width as pixels
        height: Int = 1 // height as pixels
    ) -> CGImage? {
        let size = CGSize(width: width, height: height)
        let bitsPerComponent = 8 // i.e. Red 8-bit, Green 8-bit, Blue 8-bit, Alpha 8-bit
        let componentsPerPixel = 4 // i.e. Red, Green, Blue, Alpha
        let bitsPerPixel = bitsPerComponent * componentsPerPixel
        let bytesPerPixel = bitsPerPixel / 8
        let bytesPerRow = bytesPerPixel * width
        let bytesPerGrid = bytesPerRow * height
        let bytes = [UInt8](repeating: 0x00, count: bytesPerGrid)
        var data = Data(bytes: bytes, count: Int(bytes.count))
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        guard let dataProviderRef = CGDataProvider(data: data as CFData) else {
            return nil
        }
        return CGImage(
            width: Int(width),
            height: Int(height),
            bitsPerComponent: bitsPerComponent,
            bitsPerPixel: bitsPerPixel,
            bytesPerRow: bytesPerRow,
            space: colorSpace,
            bitmapInfo: bitmapInfo,
            provider: dataProviderRef,
            decode: nil,
            shouldInterpolate: true,
            intent: .defaultIntent
        )
    }
}
