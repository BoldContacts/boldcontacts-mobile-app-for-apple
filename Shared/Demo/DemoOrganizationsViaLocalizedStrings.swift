import Contacts
import OSLog

//#if os(iOS)
//    import UIKit
//#elseif os(OSX)
//    import AppKit
//#endif

func demoOrganizations() -> [CNContact] {
    return (0...4).compactMap {
        demoOrganization($0)
    }
}

func demoOrganization(_ i: Int) -> CNContact? {
    guard let organizationName = "Demo.organizations[\(i)].organizationName".local() else {
        Logger().error("\(#file) demoOrganization(\(i)) organizationName is nil")
        return nil
    }
    guard let image = ZZImage(named: "demo-organizations-\(i)-icons-400") else {
        Logger().error("\(#file) demoOrganization(\(i)) image is nil")
        return nil
    }
    let contact = CNMutableContact()
    contact.organizationName = organizationName
    contact.phoneNumbers = [
        CNLabeledValue(
            label: CNLabelWork,
            value: CNPhoneNumber(stringValue: "1-248-434-5508") // Public phone number that goes to a rickroll
        ),
    ]
    contact.imageData = image.jpegData(compressionQuality: 1.0)
    let _ = CNContactStore().create(contact: contact)
    return contact
}
