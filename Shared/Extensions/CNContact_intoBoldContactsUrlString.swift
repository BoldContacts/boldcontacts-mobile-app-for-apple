import Contacts

extension CNContact {
    
    /// Get this contact's primary URL string representation.
    ///
    /// Return: a URL string representation.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let urlString: String? = contact.urlAddressesintoBoldContactsUrlString()
    ///
    /// The implementation uses a heuristic filter to choose the best URL.
    ///
    /// 1. A URL address with label "BoldContacts" -> return x
    ///
    /// 2. A phone number with label "BoldContacts" -> return "tel://" + x
    ///
    /// 3. An email address with label "BoldContacts" -> return "mailto://" + x
    ///
    /// 4. A URL address with label "FaceTime" -> return x
    ///
    /// 5. A phone number with label "FaceTime" -> return "facetime://" + x
    ///
    /// 6. An email address with label "FaceTime" -> return "facetime://" + x
    ///
    /// 7. A URL address -> return x
    ///
    /// 8. A phone number -> return "tel://" + x
    ///
    /// 9. An email address -> return "mailto://" + x
    ///
    public func intoBoldContactsUrlString() -> String? {
        if let x = self.urlAddresses.first(where: {$0.labelEquivalent(string: "BoldContacts")}) {
            return parseStringToURLSafeString(string: x.value as String)
        }
        if let x = self.phoneNumbers.first(where: {$0.labelEquivalent(string: "BoldContacts")}) {
            return "tel://\(parsePhoneNumberStringToURLSafeString(string: x.value.stringValue))"
        }
        if let x = self.emailAddresses.first(where: {$0.labelEquivalent(string: "BoldContacts")}) {
            return "mailto://\(parseEmailAddressStringToURLSafeString(string: x.value as String))"
        }
        if let x = self.urlAddresses.first(where: {$0.labelEquivalent(string: "FaceTime")}) {
            return "\(parseStringToURLSafeString(string: x.value as String))"
        }
        if let x = self.phoneNumbers.first(where: {$0.labelEquivalent(string: "FaceTime")}) {
            return "facetime://\(parsePhoneNumberStringToURLSafeString(string: x.value.stringValue))"
        }
        if let x = self.emailAddresses.first(where: {$0.labelEquivalent(string: "FaceTime")}) {
            return "facetime://\(parseEmailAddressStringToURLSafeString(string: x.value as String))"
        }
        if let x = getUrlAddress() {
            return parseStringToURLSafeString(string: x.value as String)
        }
        if let x = getPhoneNumber() {
            return "tel://\(parsePhoneNumberStringToURLSafeString(string: x.value.stringValue))"
        }
        if let x = getEmailAddress() {
            return "mailto://\(parsePhoneNumberStringToURLSafeString(string: x.value as String))"
        }
        return nil
    }

}
