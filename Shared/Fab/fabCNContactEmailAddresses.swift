import Foundation
import Contacts

public func fabCNContactEmailAddresses() -> [CNLabeledValue<NSString>] {
    return [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabEmailAddressAsString() as NSString
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabEmailAddressAsString() as NSString
        ),
    ]
}
