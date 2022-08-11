import UIKit

extension UIImage {

    // Create an image that is empty i.e. blank.
    //
    public static func empty(with size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContext(size)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

}
