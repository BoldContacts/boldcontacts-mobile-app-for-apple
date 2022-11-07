# File sharing & opening documents

To make the output file accessible to users via the iOS Files app, we add two keys to Info.plist:

* UIFileSharingEnabled

* LSSupportsOpeningDocumentsInPlace

Set both to "YES".

Now the user can open the iOS Files app, navigate to the "On My iPhone" section, and see the directory with the app name.

