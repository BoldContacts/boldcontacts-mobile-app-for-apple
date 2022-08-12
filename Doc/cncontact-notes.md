# CNContent - notes



## Caution: Contacts Usage Description ##

To access Contacts data using current iOS, the app's properties
must include NSContactsUsageDescription or the app could crash.

For more about this, see documentation info-plist-properties.md.

Xcode 13 uses the Info property:

  * Privacy - Contacts - Usage Description and value:

Set the property to any text you want such as:

  * "This application needs to read your contacts."


## Unified contacts ##

Apple documentation describes unified contacts.

Contacts in different accounts that represent the same person may be
automatically linked together. Linked contacts are displayed in OS X
and iOS apps as unified contacts. A unified contact is an in-memory,
temporary view of the set of linked contacts that are merged into
one contact.

By default the Contacts framework returns unified contacts. Each fetched
unified contact (CNContact) object has its own unique identifier that is
different from any individual contact’s identifier in the set of linked
contacts. A refetch of a unified contact should be done with its
identifier.


## Cocoapods

Cocoapods that may help with contacts:

```swift
 // PhoneNumberKit is a Swift framework for parsing,
 // formatting, and validating international phone numbers.
 // Inspired by Google's libphonenumber.
 // https://github.com/marmelroy/PhoneNumberKit
 pod 'PhoneNumberKit', '~> 2.6'

 // Developers say this library is fast and accurate:
 // https://github.com/iziz/libPhoneNumber-iOS
 pod 'libPhoneNumber-iOS', '~> 0.8'
```
