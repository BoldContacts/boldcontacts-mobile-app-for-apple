/// Extend all enums
extension RawRepresentable where RawValue: Any {
    
    /// Get a string that is describing the enumeration
    var describing: String {
        get { return String(describing: self) }
    }
    
}
