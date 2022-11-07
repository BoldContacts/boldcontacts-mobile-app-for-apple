import Contacts
import Foundation
import UIKit
import SwiftUI

/// For our demo, initialize various contacts.
///
func demoContacts() {
    #if targetEnvironment(simulator)
    demoDeleteContactsForSimulator()
    demoDeleteContactsForABCDEF()
    demoDeleteContactForJoelParkerHenderson()
    let _ = demoCreateContactsForABCDEF()
    let _ = demoCreateContactForJoelParkerHenderson()
    #endif
}

/// Demonstrate how to create a contact with fields.
///
/// Fields:
///
///   * given name
///   * middle name
///   * family name
///   * birthday
///   * phone numbers
///   * email addresses
///   * postal addresses
///   * image
///
/// Example:
///
/// ```swift
/// demoCreateContact(
///   givenName: "Alice",
///   middleName: "Ann",
///   familyName: "Adams",
///   emailAddressString: "alice@example.com",
///   phoneNumberString: "+1-800-555-5555",
///   socialProfileUrlString: "https://example.com/alice",
///   urlAddressString: "https://example.com/alice",
///   uiImageNamed: "demo-persons-alice-icons-512"
/// )
/// ```
///
public func demoCreateContact(
    givenName: String?,
    middleName: String?,
    familyName: String?,
    emailAddressString: String?,
    phoneNumberString: String?,
    socialProfileUrlString: String?,
    urlAddressString: String?,
    uiImageNamed: String?
) -> CNContact {
    let contact = CNMutableContact()

    if let x = givenName {
        contact.givenName = x
    }

    if let x = middleName {
        contact.middleName = x
    }
    
    if let x = familyName {
        contact.familyName = x
    }

    if let x = emailAddressString {
        contact.emailAddresses = [
            CNLabeledValue(
                label: CNLabelHome,
                value: x as NSString
            ),
        ]
    }

    if let x = phoneNumberString {
        contact.phoneNumbers = [
            CNLabeledValue(
                label: CNLabelHome,
                value: CNPhoneNumber(stringValue: x)
            ),
        ]
    }

    if let x = socialProfileUrlString {
        contact.socialProfiles = [
            CNLabeledValue(
                label: CNLabelHome,
                value: CNSocialProfile(
                    urlString: x,
                    username: nil,
                    userIdentifier: nil,
                    service: nil
                )
            ),
        ]
    }

    if let x = urlAddressString {
        contact.urlAddresses = [
            CNLabeledValue(
                label: CNLabelHome,
                value: x as NSString
            ),
        ]
    }

    if let x = uiImageNamed {
        if let image = UIImage(named: x) {
            contact.imageData = image.jpegData(compressionQuality: 1.0)
        } else {
            logger.error(
                """
                demoCreateContact image failure.
                code: b8f3f39a22695f30bef3d6c79c051e9f
                contact: \(contact)
                uiImageNamed: \(x)
                """
            )
        }
    }
    let _ = CNContactStore().create(contact: contact)
    return contact
}

func demoDeleteContactsForSimulator() {
    let store = CNContactStore()
    let _ = store.deleteByName("Anna Haro")
    let _ = store.deleteByName("Daniel Higgins")
    let _ = store.deleteByName("David Taylor")
    let _ = store.deleteByName("Hank Zakroff")
    let _ = store.deleteByName("John Appleseed")
    let _ = store.deleteByName("Kate Bell")
}

public func demoCreateContactForJoelParkerHenderson() -> CNContact {
    return demoCreateContact(
        givenName: "Joel",
        middleName: "Parker",
        familyName: "Henderson",
        emailAddressString: "joel@joelparkerhenderson.com",
        phoneNumberString: "1 (415) 317-2700",
        socialProfileUrlString: "https://instagram.com/joelparkerhenderson",
        urlAddressString: "https://github.com/joelparkerhenderson",
        uiImageNamed: "demo-persons-joel@joelparkerhenderson.com-icons-512"
    )
}

public func demoDeleteContactForJoelParkerHenderson() {
    // Ensure that we're running on a simulator,
    // so this function can't accidentally delete
    // my real contact record from my real phone.
    #if targetEnvironment(simulator)
    let _ = CNContactStore().deleteByName(name: "Joel Parker Hendersonx")
    #endif
}

public func demoCreateContactsForABCDEF() -> [CNContact] {
    let a = demoCreateContact(
        givenName: "Alice",
        middleName: nil,
        familyName: "Adams",
        emailAddressString: "alice@example.com",
        phoneNumberString: "1-248-434-5508",
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/alice",
        uiImageNamed: "demo-persons-0-icons-512"
    )
    let b = demoCreateContact(
        givenName: "Bob",
        middleName: nil,
        familyName: "Brown",
        emailAddressString: "bob@example.com",
        phoneNumberString: "1-248-434-5508",
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/bob",
        uiImageNamed: "demo-persons-1-icons-512"
    )
    let c = demoCreateContact(
        givenName: "Carol",
        middleName: nil,
        familyName: "Curtis",
        emailAddressString: "carol@example.com",
        phoneNumberString: "1-248-434-5508",
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/carol",
        uiImageNamed: "demo-persons-2-icons-512"
    )
    let d = demoCreateContact(
        givenName: "Dave",
        middleName: nil,
        familyName: "Davis",
        emailAddressString: "dave@example.com",
        phoneNumberString: "1-248-434-5508",
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/dave",
        uiImageNamed: "demo-persons-3-icons-512"
    )
    let e = demoCreateContact(
        givenName: "Eve",
        middleName: nil,
        familyName: "Evans",
        emailAddressString: "eve@example.com",
        phoneNumberString: "1-248-434-5508",
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/eve",
        uiImageNamed: "demo-persons-4-icons-512"
    )
    let f = demoCreateContact(
        givenName: "Frank",
        middleName: nil,
        familyName: "Franklin",
        emailAddressString: "frank@example.com",
        phoneNumberString: "1-248-434-5508",
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/frank",
        uiImageNamed: "demo-persons-5-icons-512"
    )
    return [a, b, c, d, e, f]
}

func demoDeleteContactsForABCDEF() {
    let store = CNContactStore()
    let _ = store.deleteByName("Alice Adams")
    let _ = store.deleteByName("Bob Brown")
    let _ = store.deleteByName("Carol Curtis")
    let _ = store.deleteByName("Dave Davis")
    let _ = store.deleteByName("Eve Evans")
    let _ = store.deleteByName("Frank Franklin")
}
