import Foundation
import SwiftUI

#if os(iOS)
    import UIKit
    public typealias ZZImage = UIImage
#elseif os(OSX)
    import AppKit
    public typealias ZZImage = NSImage
#endif

/// Polyfill UIKit UImage.init(systemName: name)
#if os(OSX)
    extension ZZImage {
        convenience init?(systemName: String) {
            self.init(systemSymbolName: systemName, accessibilityDescription: systemName)
        }
    }
#endif

extension ZZImage {

    var coreImage: CIImage? {
        #if os(iOS)
        guard let cgImage = self.cgImage else {
            return nil
        }
        return CIImage(cgImage: cgImage)
        #elseif os(OSX)
        guard
            let tiffData = tiffRepresentation,
            let ciImage = CIImage(data: tiffData)
            else {
                return nil
        }
        return ciImage
        #endif
    }
}

extension CGImage {
    
    var ZZImage: ZZImage {
        #if os(iOS)
        return UIImage(cgImage: self)
        #elseif os(OSX)
        return NSImage(cgImage: self, size: .init(width: width, height: height))
        #endif
    }
}

extension Image {
    
    init(ZZImage: ZZImage) {
        #if os(iOS)
        self.init(uiImage: ZZImage)
        #elseif os(OSX)
        self.init(nsImage: ZZImage)
        #endif
    }
}
