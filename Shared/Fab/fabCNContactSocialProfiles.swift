import Foundation
import Contacts

public func fabCNContactSocialProfiles() -> [CNLabeledValue<CNSocialProfile>] {
    [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabCNSocialProfile()
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabCNSocialProfile()
        ),
    ]
}
