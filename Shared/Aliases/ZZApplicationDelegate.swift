import Foundation
import SwiftUI

#if os(iOS)
    import UIKit
    public typealias ZZApplicationDelegate = UIApplicationDelegate
#elseif os(OSX)
    import AppKit
    public typealias ZZApplicationDelegate = NSApplicationDelegate
#endif
