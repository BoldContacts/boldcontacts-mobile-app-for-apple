/// Polyfill UIKit UImage.init(systemName: name)

import AppKit

extension NSImage {
    
    public convenience init?(systemName: String) {
        self.init(systemSymbolName: systemName, accessibilityDescription: systemName)
    }
    
}
