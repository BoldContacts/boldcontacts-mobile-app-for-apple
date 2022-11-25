import Contacts

extension CNContact: IntoZZImage {

    /// Get this contact's thumbnail image.
    ///
    /// This implementation uses the contact's thumbnail image data.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let image: ZZImage? = contact.intoZZImage()
    ///
    public func intoZZImage() -> ZZImage? {
        if self.imageDataAvailable {
            if let data = self.imageData {
                return ZZImage(data: data)
            }
        }
        return nil
    }
    
}

