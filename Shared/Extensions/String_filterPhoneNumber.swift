import Foundation

extension String {
    
    public var filterPhoneNumber: String {
        let set = CharacterSet.alphanumerics.union(CharacterSet(charactersIn: ",#*"))
        return String(self.unicodeScalars.filter { set.contains($0) })
    }
    
}
