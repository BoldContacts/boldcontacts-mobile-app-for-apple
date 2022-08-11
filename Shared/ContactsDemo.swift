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
func demoCreateContactWithNameAndImage(
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

    // Create phone numbers
    contact.phoneNumbers = [
        CNLabeledValue(
            label: CNLabelPhoneNumberiPhone,
            value: CNPhoneNumber(stringValue: fabPhoneNumberAsString())
        ),
        CNLabeledValue(
            label: CNLabelPhoneNumberPager,
            value: CNPhoneNumber(stringValue: fabPhoneNumberAsString())
        ),
    ]

    // Create email addresess
    contact.emailAddresses = [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabEmailAddressAsString() as NSString
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabEmailAddressAsString() as NSString
        ),
    ]

    // Create social profiles
    contact.socialProfiles = [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabSocialProfileAsCNSocialProfile()
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabSocialProfileAsCNSocialProfile()
        ),
    ]

    // Create postal addresses
    contact.postalAddresses = [
        CNLabeledValue(
            label: CNLabelHome,
            value: fabPostalAddressAsCNPostalAddress()
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabPostalAddressAsCNPostalAddress()
        ),
    ]

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
