import Foundation

//TODO: bulletproof
public func parseEmailAddressStringToURLSafeString(string: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[^[:space:]]")
    return regex.stringByReplacingMatches(
        in: string.trimmingCharacters(in: .whitespacesAndNewlines),
        options: [],
        range: NSRange(0..<string.utf16.count),
        withTemplate: ""
    )
}
