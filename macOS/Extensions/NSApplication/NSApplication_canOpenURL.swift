/// Polyfill UIKit UIApplication .canOpenURL

import Foundation
import AppKit

extension NSApplication {
    
    // TODO upgrade this function to use macOS registered URL helpers
    public func canOpenURL(_ url: URL) -> Bool {
        var result = false
        var scheme: String? = nil
        var bundleId: String? = nil
        var urlForApplication: URL? = nil
        let schemeToBundleId = [
            "facetime": "com.apple.FaceTime",
            "tel": "com.apple.FaceTime",
            "mailto": "com.apple.mail",
            "zoom": "us.zoom.xos",
            "skype": "com.skype.skype"
        ]
        logger.debug(
            """
            \(#file) canOpenURL start.
            code: 92d34428d4f94498161415612e719a45
            url: \(url)
            """
        )
        scheme = url.scheme
        if let scheme = scheme {
            bundleId = schemeToBundleId[scheme]
            if let bundleId = bundleId {
                urlForApplication = NSWorkspace.shared.urlForApplication(withBundleIdentifier: bundleId)
                result = urlForApplication != nil
            }
        }
        logger.debug(
            """
            \(#file) canOpenURL stop.
            code: 8ea32585fa16ae01e67428319b50362d
            url: \(url)
            scheme: \(scheme ?? "nil")
            bundleId: \(bundleId ?? "nil")
            urlForApplication: \(urlForApplication?.absoluteString ?? "nil")
            result: \(result)
            """
        )
        return result
    }
    
}
