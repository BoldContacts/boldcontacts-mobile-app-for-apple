import Foundation

extension Fab {
    
    public static func zzImageData() -> Data? {
        guard let image = Fab.zzImage() else {
            logger.error("\(#file) zzImage")
            return nil
        }
        return image.jpegData(compressionQuality: 1.0)
    }
    
}
