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

    /// Crop an image to a square size center.
    ///
    /// Example:
    ///
    /// ```
    /// let image: UIImage = UIImage(systemName: "star.fill")!
    /// let square: UIImage = image.cropToSquare()!
    /// ```
    ///
    /// This works with different orientations. Both portrait and landscape orientations works correctly.
    ///
    public func cropToSquare() -> UIImage? {
        let refWidth : CGFloat = CGFloat(self.cgImage!.width)
        let refHeight : CGFloat = CGFloat(self.cgImage!.height)
        let side = min(refWidth, refHeight)
        let x = (refWidth - side) / 2
        let y = (refHeight - side) / 2
        let cropRect = CGRect(x: x, y: y, width: side, height: side)
        if let imageRef = self.cgImage!.cropping(to: cropRect) {
            return UIImage(cgImage: imageRef, scale: 0, orientation: self.imageOrientation)
        }
        return nil
    }

}
