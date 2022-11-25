#if os(iOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

protocol IntoThumbnailZZImage {
    func intoThumbnailZZImage() -> ZZImage?
}
