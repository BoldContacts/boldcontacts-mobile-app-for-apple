import Foundation
import Contacts

public func fabCNContactPhoneNumbers() -> [CNLabeledValue<NSString>] {
    return [
        CNLabeledValue(
            label: CNLabelPhoneNumberiPhone,
            value: CNPhoneNumber(stringValue: fabPhoneNumberAsString())
        ),
        CNLabeledValue(
            label: CNLabelPhoneNumberPager,
            value: CNPhoneNumber(stringValue: fabPhoneNumberAsString())
        ),
    ]
}
