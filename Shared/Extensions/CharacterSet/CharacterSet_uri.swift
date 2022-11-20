import Foundation

/// CharacterSet of URI specification as per RFC 3986.
extension CharacterSet {

    /// URI RFC 3986: unreserved  = ALPHA / DIGIT / "-" / "." / "_" / "~"
    public static var uriUnreserveds: CharacterSet {
        return .alphanumerics.union(CharacterSet(charactersIn: "-._~"))
    }

    /// URI RFC 3986: reserved = gen-delims / sub-delims
    public static var uriReserveds: CharacterSet {
        return .uriGenericDelimiters.union(uriSubcomponentDelimiters)
    }

    /// URI RFC 3986: gen-delims = ":" / "/" / "?" / "#" / "[" / "]" / "@"
    public static var uriGenericDelimiters: CharacterSet {
        return CharacterSet(charactersIn: ":/?#[]@")
    }

    /// URI RFC 3986:  sub-delims = "!" / "$" / "&" / "'" / "(" / ")" / "*" / "+" / "," / ";" / "="
    public static var uriSubcomponentDelimiters: CharacterSet {
        return CharacterSet(charactersIn: "!$&'()*+,;=")
    }

}
