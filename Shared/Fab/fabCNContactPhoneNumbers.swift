import Foundation
import Contacts

public func fabCNContactPhoneNumbers() -> [CNLabeledValue<CNPhoneNumber>] {
    [
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
