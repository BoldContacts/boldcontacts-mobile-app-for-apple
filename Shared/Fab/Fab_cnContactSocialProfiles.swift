import Foundation
import Contacts

extension Fab {
    
    public static func cnContactSocialProfiles() -> [CNLabeledValue<CNSocialProfile>] {
        [
            CNLabeledValue(
                label: CNLabelHome,
                value: Fab.cnSocialProfile()
            ),
            CNLabeledValue(
                label: CNLabelWork,
                value: Fab.cnSocialProfile()
            ),
        ]
    }
    
}
