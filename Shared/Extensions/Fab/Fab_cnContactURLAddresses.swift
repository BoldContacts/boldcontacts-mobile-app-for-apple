import Foundation
import Contacts

extension Fab {
    
    public static func cnContactURLAddresses() -> [CNLabeledValue<NSString>] {
        [
            CNLabeledValue(
                label: CNLabelHome,
                value: Fab.urlAsString() as NSString
            ),
            CNLabeledValue(
                label: CNLabelWork,
                value: Fab.urlAsString() as NSString
            ),
        ]
    }
    
}
