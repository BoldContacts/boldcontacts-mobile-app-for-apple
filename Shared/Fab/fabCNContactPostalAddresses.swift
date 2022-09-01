import Foundation
import Contacts

public func fabCNContactPostalAddresses() -> [CNLabeledValue<CNPostalAddress>] {
    [
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
