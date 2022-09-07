# Info.plist properties - notes


## Troubleshooting ##

### Troubleshooting: NSContactsUsageDescription

If you get an error messsage such as:

    [access] This app has crashed because it attempted to access
    privacy-sensitive data without a usage description. The app's
    Info.plist must contain an NSContactsUsageDescription key with
    a string value explaining to the user how the app uses this data.

Then you must configure the application properties to use 
NSContactsUsageDescription with the value string as any user-friendly 
message such as "This app needs to read your contacts".


### Troubleshooting: LSMinimumSystemVersion

If you upload the app to App Store Connect, 
then get an email error message such as:

    ITMS-90882: Invalid LSMinimumSystemVersion - The LSMinimumSystemVersion
    Info.plist key has the value “13.0 ”. This string indicates the minimum 
    macOS version required for this app to run. The value must be between
    11.0 and 12.3 and be formatted as “x.x.x.” 
    
    For details, see  https://developer.apple.com/documentation/bundleresources/information_property_list/lsminimumsystemversion. 

Or:

    ITMS-90899: Apple silicon Mac support issue - The app is not compatible
    with the provided minimum macOS version of 12.4. It can run on macOS
    13.0 or later. Please specify an LSMinimumSystemVersion value of 13.0
    or later in a new build, or select a compatible version in App Store 
    Connect. 
    
    For details, visit: https://help.apple.com/app-store-connect/#/dev2de8e790b

The you must configure the applicatoin properties to use
LSMinimumSystemVersion with the value string "13.0"


### Troubleshooing: Xcode 13 properties and Info.plist

In Xcode 13, you edit properties this way:

  * Project -> Targets -> Info -> Custom iOS Target Properties

  * Hover over any item. You see a tiny plus icon and minus icon.

  * Click the plus icon. You can create any property you want.

IMHO this UI/UX is subpar because it's hard to discover,
and the process is quite different than the older process,
which used a big "+" icon at the top of each list section.

The first time you add/edit, Xcode will automatically generate
a new Info.plist file that’s kind of synced1 with Custom iOS
Target Properties. Xcode will later merge them for you.

Caution: the properties are not fully synced. Some properties
such as NSCameraUsageDescription will only appear in Custom iOS
Target Properties, while Application requires iPhone environment
will appear in both. TODO: how does Xcode determine this?

Some developers prefer to create a file Info.plist,
and use the older conventions for editing properties.


### Troubleshooing: Xcode 12 properties and Info.plist

In Xcode 12, you edit properties this way:

   * Select your project.

   * In the left side of the middle pane, select your app under "Targets"

   * Select the tab "Build Settings"

   * Search the following keywords: "info. plist" and "pch"

   * Choose the ones that you want to modify.

   * Click on "Validate Settings" and you're done.


