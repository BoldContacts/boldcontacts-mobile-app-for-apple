import UIKit

/// UIImage extenstion to resize an image to a new image.
///
/// Thanks:
///
///   * https://stackoverflow.com/users/4165128/alonzo
///
///   * https://stackoverflow.com/questions/14203951/cropping-center-square-of-uiimage
///
extension UIImage {

    func resize(targetSize: CGSize) -> UIImage {
        let size = self.size

        let widthRatio  = targetSize.width  / self.size.width
        let heightRatio = targetSize.height / self.size.height

        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }

        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }

}

