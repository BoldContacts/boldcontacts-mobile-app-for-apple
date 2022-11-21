import UIKit

/// UIImage extenstion to crop an image to a new square size center image.
///
/// Thanks:
///
///   * https://stackoverflow.com/users/4165128/alonzo
///
///   * https://stackoverflow.com/questions/14203951/cropping-center-square-of-uiimage
///
extension UIImage {

    /// Crop to a square size center.
    ///
    /// Example:
    ///
    /// ```
    /// let image: UIImage = UIImage(systemName: "star.fill")!
    /// let square: UIImage = image.cropToCenterSquare()!
    /// ```
    ///
    /// This works with different orientations. Both portrait and landscape orientations works correctly.
    ///
    public func cropToCenterSquare() -> UIImage? {
        guard let cgImage = self.cgImage else {
            logger.error("\(#file) cropToCenterSquare cgImage nil")
            return nil
        }
        let rect = cgImage.centerSquareCGRect()
        guard let imageRef = cgImage.cropping(to: rect) else {
            logger.error("\(#file) cropToCenterSquare imageRef nil")
            return nil
        }
        return UIImage(
            cgImage: imageRef,
            scale: 0,
            orientation: self.imageOrientation
        )
    }

}
