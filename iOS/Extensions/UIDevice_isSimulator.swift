import UIKit

extension UIDevice {
    
    /// Is the device a simulator?
    ///
    /// Example:
    /// ```
    /// let bool = UIDevice.current().isSimulator
    /// ```
    var isSimulator: Bool {
        #if targetEnvironment(simulator)
            return true
        #else
            return false
        #endif
    }
}
