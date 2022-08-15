# CNContact: Setup

To access Contacts data using current iOS, the app's properties
must include NSContactsUsageDescription or the app could crash.

For more about this, see documentation info-plist-properties.md.

Xcode 13 uses the Info property:

  * Privacy - Contacts - Usage Description and value:

Set the property to any text you want such as:

  * "This application needs to read your contacts."
