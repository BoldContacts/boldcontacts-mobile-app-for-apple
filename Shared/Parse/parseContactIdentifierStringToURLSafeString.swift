import Foundation

//TODO: bulletproof
public func parseContactIdentifierStringToURLSafeString(string: String) -> String {
    let regex = try! NSRegularExpression(pattern: "[^-0123456789ABCDEF]")
    return regex.stringByReplacingMatches(
        in: string.trimmingCharacters(in: .whitespacesAndNewlines),
        options: [],
        range: NSRange(0..<string.utf16.count),
        withTemplate: ""
    )
}
