import Contacts
import Foundation
import UIKit
import SwiftUI

// Demonstrate how to create a contact with a name and more fields.
//
// Fields:
//
//   * given name
//   * family name
//   * birthday
//   * phone numbers
//   * email addresses
//   * postal addresses
//   * image
//
// Example:
//
// ```swift
// demoCreateContactWithNameAndImage(
//   givenName: "Alice",
//   lastName: "Adams",
//   uiImageNamed: "demo-persons-alice-icons-512"
// )
// ```
//
// The rest of the fields use fab data.
//
public func demoCreateContactWithNameAndImage(
    givenName: String,
    familyName: String,
    uiImageNamed: String
) {
    
    // Create a mutable object to add to the contact
    let contact = CNMutableContact()

    // Create names
    contact.givenName = givenName
    contact.familyName = familyName

    // Create birthday
    contact.birthday = fabBirthdateAsDateComponents()

    // Create contact lists
    contact.phoneNumbers = fabCNContactPhoneNumbers()
    contact.emailAddresses = fabCNContactEmailAddresses()
    contact.urlAddresses = fabCNContactURLAddresses()
    contact.socialProfiles = fabCNContactSocialProfiles()
    contact.postalAddresses = fabCNContactPostalAddresses()
    
    // Store the profile picture as data
    //let image = UIImage(systemName: "star.fill")
    if let image = UIImage(named: uiImageNamed) {
        contact.imageData = image.jpegData(compressionQuality: 1.0)
    } else {
        logger.error(
            """
            demoCreateContactWithNameAndImage image failure.
            code: b8f3f39a22695f30bef3d6c79c051e9f
            contact: \(contact)
            uiImageNamed: \(uiImageNamed)
            """
        )
    }

    CNContactStore.create(contact: contact)
}

public func demoCreateContactForMe() {
    let contact = CNMutableContact()
    contact.givenName = "Joelx"
    contact.familyName = "Hendersonx"
    contact.phoneNumbers = [
        CNLabeledValue(
            label: CNLabelPhoneNumberiPhone,
            value: CNPhoneNumber(stringValue: "1 (415) 317-2700")
        ),
    ]
    contact.emailAddresses = [
        CNLabeledValue(
            label: CNLabelHome,
            value: "joel@joelparkerhenderson.com" as NSString
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabEmailAddressAsString() as NSString
        ),
    ]
    CNContactStore.create(contact: contact)
}

public func demoDeleteContactForMe() {
    CNContactStore.deleteByName(name: "Joelx Hendersonx")
}

public func demoCreateContactsForABCDEF() {

    demoCreateContactWithNameAndImage(
        givenName: "Alice",
        familyName: "Adams",
        uiImageNamed: "demo-persons-alice-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Bob",
        familyName: "Brown",
        uiImageNamed: "demo-persons-bob-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Carol",
        familyName: "Curtis",
        uiImageNamed: "demo-persons-carol-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Dave",
        familyName: "Davis",
        uiImageNamed: "demo-persons-dave-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Eve",
        familyName: "Evans",
        uiImageNamed: "demo-persons-eve-icons-512"
    )
    
}

func demoDeleteContactsForABCDEF() {
    CNContactStore.deleteByName(name: "Alice Adams")
    CNContactStore.deleteByName(name: "Bob Brown")
    CNContactStore.deleteByName(name: "Carol Curtis")
    CNContactStore.deleteByName(name: "Dave Davis")
    CNContactStore.deleteByName(name: "Eve Evans")
    CNContactStore.deleteByName(name: "Frank Franklin")
}
