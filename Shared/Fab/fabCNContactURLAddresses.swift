import Foundation
import Contacts

public func fabCNContactURLAddresses() -> [CNLabeledValue<NSString>] {
    [
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
