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
    public static func initWithRGBA32Components(
        r: UInt8 = 0x00, // red component byte
        g: UInt8 = 0x00, // green component byte
        b: UInt8 = 0x00, // blue component byte
        a: UInt8 = 0x00, // alpha component byte
        width: Int = 1, // width as pixels
        height: Int = 1 // height as pixels
    ) -> CGImage? {
        let data = Data([r, g, b, a]).repeats(width * height)
        let size = CGSize(width: width, height: height)
        return CGImage.initWithRGBA32Data(data: data, size: size)
    }
}
