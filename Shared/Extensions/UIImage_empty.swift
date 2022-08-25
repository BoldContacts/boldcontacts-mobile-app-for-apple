import UIKit

extension UIImage {

    /// Create an image that is empty i.e. blank.
    ///
    /// Return an empty image.
    ///
    /// Example:
    ///
    /// ```
    /// let size: CGSize = CGSize(width: 1, height: 1)
    /// let image: UIImage = UIImage.empty(with: size)!
    /// ```
    ///
    public static func empty(with size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContext(size)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

}
