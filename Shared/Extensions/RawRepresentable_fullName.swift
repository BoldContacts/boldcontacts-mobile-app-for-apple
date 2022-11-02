/// Extend all enums
extension RawRepresentable where RawValue: PartName {
    
    /// Get a string that is describing the enumeration
    var describing: String {
        get { return String(describing: self) }
    }
    
}
