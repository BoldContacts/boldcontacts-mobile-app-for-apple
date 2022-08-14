import Contacts
import UIKit

// Demonstrate how to create a contact.
func demoCreateContact() {

    // Create a contact that is mutable
    let contact = CNMutableContact()

    // Create name
    contact.givenName = "Alice"
    contact.middleName = "Amy"
    contact.familyName = "Adams"

    // Create birthday
    var birthday = DateComponents()
    birthday.day = Int.random(in: 1...28)
    birthday.month = Int.random(in: 1...12)
    birthday.year = Int.random(in: 1921...2021)
    contact.birthday = birthday

    // Create phone numbers
    let phoneNumber = CNPhoneNumber(stringValue: "+1 (415) 555-5555")
    let labeledPhoneNumber = CNLabeledValue(
        label: CNLabelPhoneNumberiPhone,
        value: phoneNumber
    )
    contact.phoneNumbers = [
        labeledPhoneNumber
    ]

    // Create email address
    let emailAddress = "alice.1@example.com"
    let labeledEmailAddress = CNLabeledValue(
        label: CNLabelHome,
        value: emailAddress as NSString
    )
    contact.emailAddresses = [
        labeledEmailAddress
    ]

    // Create postal address
    let postalAddress: CNPostalAddress = {
        let x = CNMutablePostalAddress()
        x.street = "1 Market Street"
        x.city = "San Francisco"
        x.state = "CA"
        x.postalCode = "94101"
        return x as CNPostalAddress
    }()
    let labeledPostalAddress = CNLabeledValue(
        label: CNLabelHome,
        value: postalAddress
    )
    contact.postalAddresses = [
        labeledPostalAddress
    ]

    // Create image
    if let image =  UIImage(systemName: "star.fill") {
        contact.imageData = image.jpegData(compressionQuality: 1.0)
    }

    // Save contact
    let store = CNContactStore()
    let saveRequest = CNSaveRequest()
    saveRequest.add(contact, toContainerWithIdentifier: nil)

    do {
        try store.execute(saveRequest)
    } catch {
        //TODO: add error
        logger.error(
            """
            demoCreateContact save contact failure.
            code: 7447ba41e9741b2eb7a8c6b1e2f56315
            contact: \(contact)
            """
        )
    }
}
