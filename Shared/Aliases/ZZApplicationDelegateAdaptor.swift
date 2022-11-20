import Foundation
import SwiftUI

#if os(iOS)
    import UIKit
    public typealias ZZApplicationDelegateAdaptor = UIApplicationDelegateAdaptor
#elseif os(OSX)
    import AppKit
    public typealias ZZApplicationDelegateAdaptor = NSApplicationDelegateAdaptor
#endif
