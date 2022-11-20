import Foundation

extension Locale {
    
    public func languageCodeIdentifierString() -> String? {
        if #available(iOS 16, *) {
            return languageCodeIdentifierStringWithIOS16()
        }
        if #available(iOS 15, *) {
            return languageCodeIdentifierStringWithIOS15()
        }
        return nil
    }

    @available(iOS, introduced: 16)
    func languageCodeIdentifierStringWithIOS16() -> String? {
        guard let languageCode  = self.language.languageCode else { return nil }
        let result = languageCode.identifier
        logger.debug("\(#file) languageCodeIdentifierStringWithIOS16 -> \(result)")
        return result
    }

    @available(iOS, introduced: 15, obsoleted: 16)
    func languageCodeIdentifierStringWithIOS15() -> String? {
        guard let languageCode = self.languageCode else { return nil}
        let result = languageCode
        logger.debug("\(#file) languageCodeIdentifierStringWithIOS15 -> \(result)")
        return result
    }

}
