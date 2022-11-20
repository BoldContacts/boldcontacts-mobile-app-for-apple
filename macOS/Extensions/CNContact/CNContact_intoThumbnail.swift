import Contacts
import AppKit

extension CNContact: IntoThumbnail {

    /// Get this contact's thumbnail image.
    ///
    /// This implementation uses the contact's thumbnail image data.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let image: NSImage? = contact.intoThumbnail()
    ///
    public func intoThumbnail() -> NSImage? {
        if self.imageDataAvailable {
            if let thumbnailImageData = self.thumbnailImageData {
                return NSImage(data: thumbnailImageData)
            }
        }
        return nil
    }

}
