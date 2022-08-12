import Foundation

//TODO: bulletproof
public func parsePhoneNumberStringToURLSafeString(string: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[^[:digit:]]")
    return regex.stringByReplacingMatches(
        in: string.trimmingCharacters(in: .whitespacesAndNewlines),
        options: [],
        range: NSRange(0..<string.utf16.count),
        withTemplate: ""
    )
}
