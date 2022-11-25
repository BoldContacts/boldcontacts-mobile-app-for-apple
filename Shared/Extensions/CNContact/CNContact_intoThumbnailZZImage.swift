import Contacts

extension CNContact: IntoThumbnailZZImage {

    /// Get this contact's thumbnail image.
    ///
    /// This implementation uses the contact's thumbnail image data.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let image: ZZImage? = contact.intoThumbnailZZImage()
    ///
    public func intoThumbnailZZImage() -> ZZImage? {
        if let data = self.thumbnailImageData {
            return ZZImage(data: data)
        }
        return nil
    }
    
}

