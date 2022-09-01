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
    let _ = store.deleteByName(name: "Anna Haro")
    let _ = store.deleteByName(name: "Daniel Higgins")
    let _ = store.deleteByName(name: "David Taylor")
    let _ = store.deleteByName(name: "Hank Zakroff")
    let _ = store.deleteByName(name: "John Appleseed")
    let _ = store.deleteByName(name: "Kate Bell")
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
        uiImageNamed: nil
    )
}

public func demoDeleteContactForJoelParkerHenderson() {
    let _ = CNContactStore().deleteByName(name: "Joel Parker Hendersonx")
}

public func demoCreateContactsForABCDEF() -> [CNContact] {
    let a = demoCreateContact(
        givenName: "Alice",
        middleName: nil,
        familyName: "Adams",
        emailAddressString: "alice@example.com",
        phoneNumberString: nil,
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/alice",
        uiImageNamed: "demo-persons-alice-icons-512"
    )
    let b = demoCreateContact(
        givenName: "Bob",
        middleName: nil,
        familyName: "Brown",
        emailAddressString: "bob@example.com",
        phoneNumberString: nil,
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/bob",
        uiImageNamed: "demo-persons-bob-icons-512"
    )
    let c = demoCreateContact(
        givenName: "Carol",
        middleName: nil,
        familyName: "Curtis",
        emailAddressString: "carol@example.com",
        phoneNumberString: nil,
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/carol",
        uiImageNamed: "demo-persons-carol-icons-512"
    )
    let d = demoCreateContact(
        givenName: "Dave",
        middleName: nil,
        familyName: "Davis",
        emailAddressString: "dave@example.com",
        phoneNumberString: nil,
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/dave",
        uiImageNamed: "demo-persons-dave-icons-512"
    )
    let e = demoCreateContact(
        givenName: "Eve",
        middleName: nil,
        familyName: "Evans",
        emailAddressString: "eve@example.com",
        phoneNumberString: nil,
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/eve",
        uiImageNamed: "demo-persons-eve-icons-512"
    )
    let f = demoCreateContact(
        givenName: "Frank",
        middleName: nil,
        familyName: "Franklin",
        emailAddressString: "frank@example.com",
        phoneNumberString: nil,
        socialProfileUrlString: nil,
        urlAddressString: "https://example.com/frank",
        uiImageNamed: "demo-persons-frank-icons-512"
    )
    return [a, b, c, d, e, f]
}

func demoDeleteContactsForABCDEF() {
    let store = CNContactStore()
    let _ = store.deleteByName(name: "Alice Adams")
    let _ = store.deleteByName(name: "Bob Brown")
    let _ = store.deleteByName(name: "Carol Curtis")
    let _ = store.deleteByName(name: "Dave Davis")
    let _ = store.deleteByName(name: "Eve Evans")
    let _ = store.deleteByName(name: "Frank Franklin")
}
