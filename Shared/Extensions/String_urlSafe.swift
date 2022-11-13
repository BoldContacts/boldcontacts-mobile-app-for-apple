import Foundation

extension String {
    public var urlSafe: String? {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.alphanumerics)
    }
}
