import Foundation
import Contacts

public func fabCNContactURLAddresses() -> [CNLabeledValue<NSString>] {
    return [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabURLAsString() as NSString
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabURLAsString() as NSString
        ),
    ]
}
