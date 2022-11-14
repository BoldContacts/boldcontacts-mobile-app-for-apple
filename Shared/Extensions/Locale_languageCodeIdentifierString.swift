import Foundation

extension Locale {
    
    public func languageCodeIdentifierString() -> String? {
        if #available(iOS 16, *) {
            guard let languageCode  = self.language.languageCode else { return nil }
            return languageCode.identifier
        }
        if #available(iOS 15, *) {
            guard let languageCode = self.languageCode else { return nil}
            return languageCode
        }
    }
    
}
