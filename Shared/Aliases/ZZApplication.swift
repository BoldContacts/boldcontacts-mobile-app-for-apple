import Foundation
import SwiftUI

#if os(iOS)
    import UIKit
    public typealias ZZApplication = UIApplication
#elseif os(OSX)
    import AppKit
    public typealias ZZApplication = NSApplication
#endif
