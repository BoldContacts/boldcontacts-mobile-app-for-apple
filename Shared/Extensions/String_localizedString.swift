import Foundation
import SwiftUI
import OSLog

extension String {
    
    /// Use this string as a localized string key to look up a localized string.
    ///
    /// Credit https://stackoverflow.com/questions/60841915/how-to-change-localizedstringkey-to-string-in-swiftui
    /// 
    func localizedString(
        locale: Locale = .current,
        logger: Logger = logger
    ) -> String? {
        guard let path = Bundle.main.path(forResource: locale.languageCode, ofType: "lproj") else {
            logger.error("Path is nil. Self is \"(self)")
            return self
        }
        guard let bundle = Bundle(path: path) else {
            logger.error("Bundle is nil. Self is \"(self)")
            return self
        }
        return NSLocalizedString(self, bundle: bundle, comment: "")
    }

}
