import Foundation

extension String {
    public var uriEncode: String? {
        return self.addingPercentEncoding(
            withAllowedCharacters:
                CharacterSet.alphanumerics.union(
                    CharacterSet(charactersIn: "~-_.^")
                )
            )
    }
}

