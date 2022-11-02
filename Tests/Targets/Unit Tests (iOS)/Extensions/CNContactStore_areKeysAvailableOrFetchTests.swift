import XCTest
import Contacts
@testable import BoldContacts

class CNContactStore_areKeysAvailableOrFetchTests: XCTestCase {

    func test() throws {
        let store = CNContactStore()
        let contact = CNContact()
        let keys = [
            CNContactEmailAddressesKey,
            CNContactPhoneNumbersKey,
            CNContactPostalAddressesKey,
            CNContactSocialProfilesKey,
            CNContactUrlAddressesKey,
        ] as [CNKeyDescriptor]
        let expect = store.areKeysAvailableOrFetch(contact: contact, keys: keys)
        XCTAssertEqual(expect, contact)
    }

}
