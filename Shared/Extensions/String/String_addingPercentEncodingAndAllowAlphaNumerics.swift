import Foundation

extension String {
    public var addingPercentEncodingAndAllowAlphaNumerics: String? {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.alphanumerics)
    }
}
