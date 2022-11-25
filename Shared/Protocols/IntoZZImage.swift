#if os(iOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

protocol IntoZZImage {
    func intoZZImage() -> ZZImage?
}
