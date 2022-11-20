/// Polyfill UIKit UImage .pngData
///
/// https://developer.apple.com/documentation/uikit/uiimage/1624096-pngdata

import AppKit

extension NSImage {

    public func pngData() -> Data? {
        let cgImage = self.cgImage(forProposedRect: nil, context: nil, hints: nil)!
        let bitmapImageRep = NSBitmapImageRep(cgImage: cgImage)
        return bitmapImageRep.representation(
            using: NSBitmapImageRep.FileType.png,
            properties: [:]
        )
    }

}
