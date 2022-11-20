import Foundation

/// Get the Bundle display name i.e. app name as shown on the device screen.
///
/// Example:
///
/// ```
/// let name: String? = Bundle.main.displayName()
/// ```
///
extension Bundle {
    
    var displayName: String? {
        return object(forInfoDictionaryKey: "CFBundleDisplayName") as? String
    }
    
}
