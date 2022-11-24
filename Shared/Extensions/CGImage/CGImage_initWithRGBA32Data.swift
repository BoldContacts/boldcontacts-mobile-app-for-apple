import Foundation
import CoreGraphics

extension CGImage {

    /// Create an image from scratch using RGBA-32 color.
    ///
    public static func initWithRGBA32Data(
        data: Data = Data([0x00, 0x00, 0x00, 0x00]),
        size: CGSize = CGSize(width: 1, height: 1)
    ) -> CGImage? {
        let width = Int(size.width)
        let height = Int(size.height)
        let bitsPerComponent = 8 // i.e. Red 8-bit, Green 8-bit, Blue 8-bit, Alpha 8-bit
        let componentsPerPixel = 4 // i.e. Red, Green, Blue, Alpha
        let bitsPerPixel = bitsPerComponent * componentsPerPixel
        let bytesPerPixel = bitsPerPixel / 8
        let bytesPerRow = bytesPerPixel * width
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue)
        let space = CGColorSpaceCreateDeviceRGB()
        guard let provider = CGDataProvider(data: data as CFData) else {
            return nil
        }
        return CGImage(
            width: width,
            height: height,
            bitsPerComponent: bitsPerComponent,
            bitsPerPixel: bitsPerPixel,
            bytesPerRow: bytesPerRow,
            space: space,
            bitmapInfo: bitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: true,
            intent: .defaultIntent
        )
    }
}
