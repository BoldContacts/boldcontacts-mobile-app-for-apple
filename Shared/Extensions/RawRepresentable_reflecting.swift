/// Extend all enums
extension RawRepresentable where RawValue: Any {
    
    /// Get a string that is reflecting the enumeration
    var reflecting: String {
        get { return String(reflecting: self) }
    }

}
