import Contacts
import UIKit
import OSLog

func demoPersons() -> [CNContact] {
    return (0...5).compactMap {
        demoPerson($0)
    }
}

func demoPerson(_ i: Int) -> CNContact? {
    guard let givenName = "Demo.persons[\(i)].givenName".local() else {
        Logger().error("\(#file) demoPerson(\(i)) givenName is nil")
        return nil
    }
    guard let familyName = "Demo.persons[\(i)].familyName".local() else {
        Logger().error("\(#file) demoPerson(\(i)) familyName is nil")
        return nil
    }
    guard let image = UIImage(named: "demo-persons-\(i)-icons-512") else {
        Logger().error("\(#file) demoPerson(\(i)) image is nil")
        return nil
    }
    let contact = CNMutableContact()
    contact.givenName = givenName
    contact.familyName = familyName
    contact.phoneNumbers = [
        CNLabeledValue(
            label: CNLabelHome,
            value: CNPhoneNumber(stringValue: "1-248-434-5508") // Public phone number that goes to a rickroll
        ),
    ]
    contact.imageData = image.jpegData(compressionQuality: 1.0)
    let _ = CNContactStore().create(contact: contact)
    return contact
}
