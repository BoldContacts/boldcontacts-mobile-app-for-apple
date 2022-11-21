import UIKit

extension UIImage: IntoCGImage {
    
    public func intoCGImage() -> CGImage? {
        return self.cgImage
    }
    
}
