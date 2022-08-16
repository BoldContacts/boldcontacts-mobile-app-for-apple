import Foundation
import Contacts

public func fabCNContactPostalAddresses() -> [CNLabeledValue<CNPostalAddress>] {
    return [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabCNPostalAddress()
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabCNPostalAddress()
        ),
    ]
}
