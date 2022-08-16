import Foundation
import Contacts

public func fabCNContactSocialProfiles() -> [CNLabeledValue<NSString>] {
    return [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabSocialProfileAsCNSocialProfile()
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabSocialProfileAsCNSocialProfile()
        ),
    ]

}
