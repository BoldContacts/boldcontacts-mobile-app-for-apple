# CNContact key - notes

CNContact keys can be written various ways as you prefer.

Example using strings:

```swift
let keys = [
    CNContactGivenNameKey,
    CNContactFamilyNameKey,
] as [CNKeyDescriptor]
```

Example using a descriptor:

```swift
let keys = [CNContact.descriptorForAllComparatorKeys()]
```

Example using a formatter descriptor:

```swift
let keys = [CNContactFormatter.descriptorForRequiredKeys(for: .fullName)]
```

Example using all of the above:

```swift
let keys: [Any] = [
    CNContactGivenNameKey,
    CNContactFamilyNameKey,
    CNContact.descriptorForAllComparatorKeys(),
    CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
]
…
let request = CNContactFetchRequest(keysToFetch: keys as! [CNKeyDescriptor])
```

## Favorites

Keys that we typically want:

```swift
let keys: [CNKeyDescriptor] = [
    CNContactGivenNameKey as CNKeyDescriptor,
    CNContactFamilyNameKey as CNKeyDescriptor,
    CNContactBirthdayKey as CNKeyDescriptor,
    CNContactPhoneNumbersKey as CNKeyDescriptor,
    CNContactEmailAddressesKey as CNKeyDescriptor,
    CNContactPostalAddressesKey as CNKeyDescriptor,
    CNContactSocialProfilesKey as CNKeyDescriptor,
    CNContactUrlAddressesKey as CNKeyDescriptor,
    CNContactImageDataKey as CNKeyDescriptor,
    CNContactThumbnailImageDataKey as CNKeyDescriptor,
    CNContactImageDataAvailableKey as CNKeyDescriptor,
    CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
    CNContact.descriptorForAllComparatorKeys(),
]
```
