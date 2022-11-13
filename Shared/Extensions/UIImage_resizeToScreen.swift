import UIKit

/// UIImage extenstion to resize an image to a new image that fits on the screen.
///
extension UIImage {

    /// Resize an image to a given size.
    ///
    /// Example:
    ///
    /// ```
    /// let image: UIImage = UIImage(systemName: "star.fill")!
    /// let resized: UIImage = image.resizeToScreen(targetSize: size)!
    /// ```
    ///
    func resizeToScreen() -> UIImage {
        let size = CGSize(
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height,
        )
            let resized: UIImage = cropped.resize(targetSize: size);
            return Image(uiImage: resized)
        }

}

