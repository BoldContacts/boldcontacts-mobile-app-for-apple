import Foundation

//TODO: bulletproof
public func parseStringToURLSafeString(string: String) -> String {
    return string.trimmingCharacters(in: .whitespacesAndNewlines)
}

