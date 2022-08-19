# Xcode project overview

This document describes the Xcode project overview of what files we use.
 
Main:

* BoldContactsApp: the main SwiftUI struct.

* AppDelegate: typical app delegate, such as for notifications.

* Logger: typical global singleton instance of the app's logger.

* Config: typical global class for configuration, such as for colors, sizes, etc.

* Cursor: data cursor to track the contact list, current contact, etc.

Views:

* ContentView: top-level view that fills the screen

* ItemThumbnailImageView: show the item's thumbnail i.e. the contact's photo.
    
* ItemTitleTextView: show the item's title i.e. the contact's name.

* NavView: navigation area for buttons, such as prev, next, etc.
  
* ButtonImageView: a big button with an Apple SF Symbols image.

* RectangleHorizonalView: wide spacer

* RectangleVerticalView: tall spacer
    
Helpers:

* AppButtonStyle: big button image with black tint, green press highlight, etc.

For demos and tests:
  
* ContactsDemo: ad-hoc ways to create contacts for a demo.

* Unused: Placeholder codd, such as fragments that we're considering.

Folders:

* Protocols: see below for details.

* Extensions: see below for details.

* Open: Launchers for kinds of URLs, such as for phone, email, etc.
    
* Parse: Sanitizers for strings, such as for phone numbers, email addresses, etc.

* Fab: Fabricators for fake data, such as for demos, previews, tests, etc.


## Protocols

* IntoString: `intoString() -> String?`

* IntoTitle: `intoTitle() -> String?`

* IntoSubtitle: `intoSubtitle() -> String?`

* IntoThumbnail: `intoThumbnail() -> UIImage?`


## Extensions

* CNContact

  * intoString: implement `IntoString`

  * intoTitle: implement `IntoTitle`

  * intoSubtitle: implement `IntoSubtitle`

  * intoThumbnail: implement `IntoThumbnail`

  * fullName: get the contact's full name
  
  * indexable: get the contact's indexable email addresses, phone numbers, etc. 

* CNContactStore

  * keysToFetch: return our preferred keys that we want to fetch
 
  * isKeyAvailableOrFetch: is a contact's key available? 

  * areKeysAvailableOrFetch: are a contact's keys available? 
 
  * list: list all contacts

  * create: create a contact
  
  * delete: delete a contact
  
  * deleteByName: delete a contact by a searchable name
  
* CharacterSet

  * uri: URI character sets
  
* Collection

  * safe: safe index for any collection

* UIColor

  * lighter_darker: make a color lighter or darker
  
* UIImage

  * empty: provide an empty image i.e. blank image

  * resize: resize the image

  * cropToSquare: crop the image to a square size
