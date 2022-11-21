extension Fab {
    
    public static func phoneNumberAsString() -> String {
        "+1 (" + Fab.phoneNumberAreaCodeAsString() + ") 555-" + String(Int.random(in: 1000...9999))
    }
    
}
