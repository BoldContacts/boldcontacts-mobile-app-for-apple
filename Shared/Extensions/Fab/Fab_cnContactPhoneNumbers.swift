import Foundation
import Contacts

extension Fab {
    
    public static func cnContactPhoneNumbers() -> [CNLabeledValue<CNPhoneNumber>] {
        [
            CNLabeledValue(
                label: CNLabelPhoneNumberiPhone,
                value: CNPhoneNumber(stringValue: Fab.phoneNumberAsString())
            ),
            CNLabeledValue(
                label: CNLabelPhoneNumberPager,
                value: CNPhoneNumber(stringValue: Fab.phoneNumberAsString())
            ),
        ]
    }
    
}
