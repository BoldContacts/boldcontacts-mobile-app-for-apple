// ContactTools.swift
//
// See documentation files:
//
//   * cncontact-notes.md
//   * cncontact-key-notes.md
//   * info-plist-properties-notes.md
//

import Foundation
import UIKit
import Contacts

/// Create a contact with a name.
///
/// Return true=success or false=failure.
/// 
/// Example:
///
///     let contact: CNContact = createContactWithName(
///         givenName: "Alice",
///         middleName: "Amy",
///         lastName: "Adams"
///     )
///
func createContactWithName(givenName: String, middleName: String, familyName: String) -> Bool {
    let contact = CNMutableContact()
    contact.givenName = givenName
    contact.middleName = middleName
    contact.familyName = familyName
    return CNContactStore.create(contact: contact)
}

