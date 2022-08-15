# CNContact: Setup

To access Contacts data using current iOS, the app's properties
must include NSContactsUsageDescription or the app could crash.

For more about this, see documentation info-plist-properties.md.

Xcode 13.4 lets you edit properties this way:

  * Project -> Targets -> Info -> Custom iOS Target Properties

  * Hover over any item. You see a tiny plus icon and minus icon.

  * Click the plus icon. You can create any property you want.

  * Create the property "Privacy - Contacts - Usage Description".

  * Xcode will automatically create the message to the user.

Other Xcode versions work differently.

Other Xcode versions may need you to set the property 
to any value text that you want such as:

  * "This application needs to read your contacts."
