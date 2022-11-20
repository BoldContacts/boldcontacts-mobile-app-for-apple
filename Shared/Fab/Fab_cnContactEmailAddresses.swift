import Foundation
import Contacts

extension Fab {
    
    public static func cnContactEmailAddresses() -> [CNLabeledValue<NSString>] {
        [
            CNLabeledValue(
                label: CNLabelHome,
                value: Fab.emailAddressAsString() as NSString
            ),
            CNLabeledValue(
                label: CNLabelWork,
                value: Fab.emailAddressAsString() as NSString
            ),
        ]
    }
    
}
