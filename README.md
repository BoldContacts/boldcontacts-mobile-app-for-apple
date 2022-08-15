#  BoldContacts

BoldContacts is an app is a greatly-simpler way to browse contacts and connect to them.

BoldContacts is especially good for people who may be experiencing vision disabiltiies, cognitive disabiltiies, or motor disabiltiies. The app displays each contact by using bold text, a large photo, large buttons, and one way to connect.
 
BoldContacts started as a project to help my family's parents, who are experiencing Alzheimer's disease and Parkison's disease, and who were losing the ability to work with the typical contacts app. We created the app to be much simpler, and to be open source so other developers can work with the code to help people.


## Screenshot

<img src="screenshot.png">

The app shows each contact as a card with:

* The contact's photo.

* The contact's full name.

* Buttons to connect via video and voice.

* Buttons to navigate backward and foward among contacts.


    
## Help Wanted

If you have Parkinson's disease, or are caring for a person who has Parkinson's disease, and you are open to talking, then we would greatly appreaciate talking with you.

If you are an Apple iOS Swift developer, we are seeking volunteer developer help.
  

## Goals

Good usability for people who experience motor difficulties.

  * Such as arthritis, or nerve damage, or reflex tremor, etc. 

Good usability for people who experience vision difficulties.

  * Such as partially sighted vision, or double vision, or blurred vision, or hazy vision, etc. 

Good usability for people who experience cognitive difficulties.

  * Such as technical inexperience, or memory loss, or confusion.


## Current Scope
  
Read contacts. 

  * Beyond scope: create/update/delete contacts. For these, please use the Apple Contacts app.  
  
One contact uses one phone number.

  * Beyond scope: One contact uses multiple phone numbers. For these, please use the Apple Contacts app.

Stable contacts.

  * Future scope: contacts that are rapidly changing and/or need synchronization.

Portrait orientation.

  * Future scope: landscape orientation.
  
Apple ecosystem.

  * Future scope: other ecosystems, starting with Android.
  
Current Apple iPhone, curent Apple iPad, curent iOS.

  * Future scope: older Apple iPhone, older Apple iPad, older iOS; other devices such as Apple MacBook or Apple Watch.

Video connection uses FaceTime.

  * Future scope: other video connections such as Zoom video, Meta WhatsApp video, Microsoft Teams video, etc. For these, we welcome help.
  
Contact image is cropped to square.

  * Future scope: other image sizes, other image shapes.
  

## User Interface Guidance

Colors:

  * All views use high-contrast, thick-stroke lines and solid colors.
  
  * Not low-contrast, not thin-stroke lines, not gradient colors.

Actions:

  * All actions use buttons.
  
  * Not tab menus, not slideout grips, etc. 

Gestures:

  * All gestures are taps.

  * Not flick-to-scroll, no pinch-to-zoom, etc.

Button taps:

  * All taps are single-tap. 

  * Not double-tap, not long-tap, etc.

Button feedback:

  * All taps provide immediate feedback.
  
  * Not zero-feedback, not feedback delay until release, etc.
   
Button sizes:

  * All buttons are 2x size or larger.

  * Not default-size buttons, not sub-size buttons, etc.

Button locations:

  * All buttons are near the screen's bottom and center, for easy reachability.
  
  * Not near the screen's top or left/right edges, etc.
  
Button colors:

  * All buttons are black tint.

  * Not default tint, not blue tint, etc.

Button icons:
    
  * All buttons use the Apple SF Symbol circle icons e.g. "video.circle", "arrow.left.circle". 

  * Not "video", not "video.fill", not "video.circle.fill", etc.  


## Xcode project

This section describes the Xcode project files we use.
 
Main:

* PhotoCallerApp: the main SwiftUI struct.

* AppDelegate: typical app delegate, such as for notifications.

* Log: typical global singleton instance of the app's logger.

* Config: typical global class for configuration, such as for colors, sizes, etc.

Views:

* ContentView & ContentViewModel: track contact list, current contact, etc.

  * ContactView

    * ContactImageView: show the contact's photo
    
    * ContactTextView: show the contact's name 

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


## Technical questions

We have technical questions and welcome advice from experienced developers: 

  * How can iOS Swift detect if a CNContact has FaceTime capabilties? 

  * How can the app ensure that open("facetime://…") succeeds, then after the call the person is returned to the app?
  
