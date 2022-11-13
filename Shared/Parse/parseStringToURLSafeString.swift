import Foundation

//TODO: bulletproof
public func parseStringToURLSafeString(_ string: String) -> String? {
    return string
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .urlSafe
}

