import Contacts

public func fabPhoneNumberAsCNPhoneNumber() -> CNPhoneNumber {
    return CNPhoneNumber(stringValue: fabPhoneNumberAsString())
}

