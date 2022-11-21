import Foundation

extension Fab {
    
    public static func ZZImageData() -> Data? {
        let imageName = Fab.sfSymbolsLetterCircle()
        guard let image = BoldContacts.ZZImage(named: imageName) else {
            logger.error("\(#file) imageName: \(imageName)")
            return nil
        }
        return image.jpegData(compressionQuality: 1.0)
    }
    
}
