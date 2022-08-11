import UIKit

/// UIImage extenstion to crop an image to a new square size image.
///
/// Thanks:
///
///   * https://stackoverflow.com/users/4165128/alonzo
///
///   * https://stackoverflow.com/questions/14203951/cropping-center-square-of-uiimage
///
extension UIImage {
    
    public func cropToSquare() -> UIImage? {
        var imageHeight = self.size.height
        var imageWidth = self.size.width

        if imageHeight > imageWidth {
            imageHeight = imageWidth
        }
        else {
            imageWidth = imageHeight
        }

        let size = CGSize(width: imageWidth, height: imageHeight)

        let refWidth : CGFloat = CGFloat(self.cgImage!.width)
        let refHeight : CGFloat = CGFloat(self.cgImage!.height)

        let x = (refWidth - size.width) / 2
        let y = (refHeight - size.height) / 2

        let cropRect = CGRect(x: x, y: y, width: size.width, height: size.height)
        if let imageRef = self.cgImage!.cropping(to: cropRect) {
            return UIImage(cgImage: imageRef, scale: 0, orientation: self.imageOrientation)
        }

        return nil
    }

}
