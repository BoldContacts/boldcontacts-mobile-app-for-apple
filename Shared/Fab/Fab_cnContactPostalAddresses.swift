import Foundation
import Contacts

extension Fab {
    
    public static func cnContactPostalAddresses() -> [CNLabeledValue<CNPostalAddress>] {
        [
            CNLabeledValue(
                label: CNLabelHome,
                value: Fab.cnPostalAddress()
            ),
            CNLabeledValue(
                label: CNLabelWork,
                value: Fab.cnPostalAddress()
            ),
        ]
    }
    
}
