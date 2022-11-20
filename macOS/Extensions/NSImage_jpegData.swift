/// Polyfill UIKit UImage .jpegData
///
/// https://developer.apple.com/documentation/uikit/uiimage/1624115-jpegdata

import AppKit

extension NSImage {

    public func jpegData(compressionQuality: CGFloat) -> Data? {
        let cgImage = self.cgImage(forProposedRect: nil, context: nil, hints: nil)!
        let bitmapImageRep = NSBitmapImageRep(cgImage: cgImage)
        return bitmapImageRep.representation(
            using: NSBitmapImageRep.FileType.jpeg,
            properties: [NSBitmapImageRep.PropertyKey.compressionFactor : compressionQuality]
        )
    }

}
