import Foundation

public func fabZZImageData() -> Data? {
    let imageName = fabSFSymbolsLetterCircle()
    guard let image = ZZImage(named: imageName) else {
        logger.error("\(#file) imageName: \(imageName)")
        return nil
    }
    return image.jpegData(compressionQuality: 1.0)
}
