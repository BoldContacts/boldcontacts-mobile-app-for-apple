import AppKit

extension NSImage {

    /// Crop an image to a square size center.
    ///
    /// Example:
    ///
    /// ```
    /// let image: NSImage = NSImage(systemName: "star.fill")!
    /// let square: NSImage = image.cropToSquare()!
    /// ```
    ///
    /// This works with different orientations. Both portrait and landscape orientations works correctly.
    ///
    public func cropToSquare() -> NSImage? {
        let refWidth : CGFloat = CGFloat(self.cgImage!.width)
        let refHeight : CGFloat = CGFloat(self.cgImage!.height)
        let side = min(refWidth, refHeight)
        let x = (refWidth - side) / 2
        let y = (refHeight - side) / 2
        let cropRect = CGRect(x: x, y: y, width: side, height: side)
        if let imageRef = self.cgImage!.cropping(to: cropRect) {
            return NSImage(cgImage: imageRef, scale: 0, orientation: self.imageOrientation)
        }
        return nil
    }

}
