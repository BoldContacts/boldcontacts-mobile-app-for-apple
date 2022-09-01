import Foundation
import Contacts

public func fabCNContactEmailAddresses() -> [CNLabeledValue<NSString>] {
    [
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
