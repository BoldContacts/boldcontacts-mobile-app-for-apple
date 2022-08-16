import Foundation
import Contacts

public func fabCNContactSocialProfiles() -> [CNLabeledValue<CNSocialProfile>] {
    return [
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
