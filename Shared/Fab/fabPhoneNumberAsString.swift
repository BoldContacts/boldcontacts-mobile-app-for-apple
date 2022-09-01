public func fabPhoneNumberAsString() -> String {
    "+1 (" + fabPhoneNumberAreaCodeAsString() + ") 555-" + String(Int.random(in: 1000...9999))
}
