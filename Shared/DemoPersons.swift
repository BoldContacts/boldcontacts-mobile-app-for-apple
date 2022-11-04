import Contacts
import UIKit

func demoPersons() -> [CNContact] {
    return (0...5).compactMap {
        demoPerson($0)
    }
}

func demoPerson(_ i: Int) -> CNContact? {
    guard let givenName = "Demo.persons[\(i)].givenName".localizedString() else { return nil }
    guard let familyName = "Demo.persons[\(i)].familyName".localizedString() else { return nil }
    guard let phoneNumberString = "Demo.persons[\(i)].phoneNumberString".localizedString() else { return nil }
    guard let image = UIImage(named: "demo-persons-\(i)-icons-512") else { return nil }
    let contact = CNMutableContact()
    contact.givenName = givenName
    contact.familyName = familyName
    contact.phoneNumbers = [
        CNLabeledValue(
            label: CNLabelHome,
            value: CNPhoneNumber(stringValue: phoneNumberString)
        ),
    ]
    contact.imageData = image.jpegData(compressionQuality: 1.0)
    return contact
}
