import Contacts
import UIKit

extension CNContact: IntoThumbnail {

    /// Get this contact's thumbnail image.
    ///
    /// This implementation uses the contact's thumbnail image data.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let image: UIImage? = contact.intoThumbnail()
    ///
    public func intoThumbnail() -> UIImage? {
        if self.imageDataAvailable {
            if let thumbnailImageData = self.thumbnailImageData {
                return UIImage(data: thumbnailImageData)
            }
        }
        return nil
    }

}
