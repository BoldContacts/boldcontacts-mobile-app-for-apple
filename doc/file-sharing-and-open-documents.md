# File sharing & opening documents

To make the output file accessible to users via the iOS Files app, we add two keys to Info.plist:

* UIFileSharingEnabled

* LSSupportsOpeningDocumentsInPlace

Set both to "YES".

Now the user can open the iOS Files app, navigate to the "On My iPhone" section, and see the directory with the app name.


## Settings

Consider:

* Privacy - Access to a File Provide Domain Usage Description

* Privacy - Documents folder usage description


## Setting "Privacy - Documents folder usage description"

XCode 14 -> Targets -> BoldContacts (iOS) -> Info -> Custom iOS Target Properties

https://developer.apple.com/documentation/bundleresources/information_property_list/nsfileproviderdomainusagedescription

Example text: "This app needs access to files in your documents folder."

