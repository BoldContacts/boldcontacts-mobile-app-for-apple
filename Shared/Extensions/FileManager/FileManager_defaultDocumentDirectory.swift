import Foundation

extension FileManager {
    
    public static func defaultDocumentDirectoryURL() -> URL? {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    }
    
    public static func defaultDocumentDirectoryFileURL(fileName: String) -> URL? {
        guard let dir = defaultDocumentDirectoryURL() else { return nil }
        return dir.appendingPathComponent(fileName)
    }
    
}
