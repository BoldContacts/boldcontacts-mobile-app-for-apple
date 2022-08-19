# Xcode project overview

This document describes the Xcode project overview of what files we use.
 
Main:

* BoldContactsApp: the main SwiftUI struct.

* AppDelegate: typical app delegate, such as for notifications.

* Logger: typical global singleton instance of the app's logger.

* Config: typical global class for configuration, such as for colors, sizes, etc.

Views:

* ContentView & ContentViewModel: track contact list, current contact, etc.

  * ContactView

    * ItemThumbnailImageView: show the contact's photo.
    
    * ItemTitleTextView: show the contact's full name.

  * NavView: navigation area for buttons, such as prev, next, etc.
  
    * ButtonImageView: a big button with an Apple SF Symbols image.

  * RectangleVerticalView & RectangleHorizonalView (spacers)
    
Helpers:

* Open: Launchers for kinds of URLs, such as for phone, email, etc.
    
* Parse: Sanitizers for strings, such as for phone numbers, email addresses, etc.

* Extensions: utility functions for contacts, images, characters, etc.

* AppButtonStyle: big button image with black tint, green press highlight, etc.

For demos and tests:
  
* ContactsDemo: ad-hoc ways to create contacts for a demo.

* Fab: Fabricators for fake data, such as for demos, tests, etc.
  
* Unused: Placeholder codd, such as fragments that we're considering.

