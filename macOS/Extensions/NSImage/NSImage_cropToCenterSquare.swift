import AppKit

extension NSImage {

    /// Crop to a center square.
    ///
    /// Example:
    ///
    /// ```
    /// let image: NSImage = NSImage(systemName: "star.fill")!
    /// let square: NSImage = image.cropToCenterSquare()!
    /// ```
    ///
    /// This works with different orientations. Both portrait and landscape orientations works correctly.
    ///
    public func cropToCenterSquare() -> NSImage? {
        guard let cgImage =  self.intoCGImage() else {
            logger.error("\(#file) cropToCenterSquare cgImage nil")
            return nil
        }
        let rect = cgImage.centerSquareCGRect()
        guard let imageRef = cgImage.cropping(to: rect) else {
            logger.error("\(#file) cropToCenterSquare imageRef nil")
            return nil
        }
        return NSImage(
            cgImage: imageRef,
            size: NSSize(width: rect.width, height: rect.height)
        )
        
    }

}
