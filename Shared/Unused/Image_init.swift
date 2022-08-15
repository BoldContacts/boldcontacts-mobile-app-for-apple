import Foundation
import SwiftUI
import UIKit

// To use an image asset from your code:
//
//   * Initialize an image with the name of the image set.
//
//   * Don’t include the file extension.
//
// ```swift
// // SwiftUI
// let image = Image("ImageName")
//
// // UIKit
// let image = UIImage(named: "ImageName")
//
// // AppKit
// let image = NSImage(named: "ImageName")
// ```

extension Image {
//    // Credit https://www.enekoalonso.com/articles/displaying-images-in-swiftui-views-from-swift-package-resources
//    init(packageResource name: String, ofType type: String) {
//        #if canImport(UIKit)
//        guard let path = Bundle.module.path(forResource: name, ofType: type),
//              let image = UIImage(contentsOfFile: path) else {
//            self.init(name)
//            return
//        }
//        self.init(uiImage: image)
//        #elseif canImport(AppKit)
//        guard let path = Bundle.module.path(forResource: name, ofType: type),
//              let image = NSImage(contentsOfFile: path) else {
//            self.init(name)
//            return
//        }
//        self.init(nsImage: image)
//        #else
//        self.init(name)
//        #endif
//    }
}
