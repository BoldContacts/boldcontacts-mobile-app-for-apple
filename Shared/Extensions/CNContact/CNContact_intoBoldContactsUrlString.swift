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
    public func intoBoldContactsURL() -> URL? {
        if let x = self.urlAddresses.first(where: {$0.labelEquivalent(string: "BoldContacts")}) {
            if let url = URL(string: (x.value as String).xtrim) {
                return url
            }
        }
        if let x = self.phoneNumbers.first(where: {$0.labelEquivalent(string: "BoldContacts")}) {
            if let s = x.value.stringValue.filterPhoneNumber.uriEncode {
                if let url = URL(string: "tel://\(s)") {
                    return url
                }
            }
        }
        if let x = self.emailAddresses.first(where: {$0.labelEquivalent(string: "BoldContacts")}) {
            if let s = (x.value as String).xtrim.uriEncode {
                if let url = URL(string: "mailto://\(s)") {
                    return url
                }
            }
        }
        if let x = self.urlAddresses.first(where: {$0.labelEquivalent(string: "FaceTime")}) {
            if let url = URL(string: (x.value as String).xtrim) {
                return url
            }
        }
        if let x = self.phoneNumbers.first(where: {$0.labelEquivalent(string: "FaceTime")}) {
            if let s = x.value.stringValue.filterPhoneNumber.uriEncode {
                if let url = URL(string: "facetime://\(s)") {
                    return url
                }
            }
        }
        if let x = self.emailAddresses.first(where: {$0.labelEquivalent(string: "FaceTime")}) {
            if let s = (x.value as String).xtrim.uriEncode {
                if let url = URL(string: "facetime://\(s)") {
                    return url
                }
            }
        }
        if let x = getUrlAddress() {
            if let url = URL(string: (x.value as String).xtrim) {
                return url
            }
        }
        if let x = getPhoneNumber() {
            if let s = (x.value.stringValue).filterPhoneNumber.uriEncode {
                if let url = URL(string: "tel://\(s)") {
                    return url
                }
            }
        }
        if let x = getEmailAddress() {
            if let s = (x.value as String).xtrim.uriEncode {
                if let url = URL(string: "mailto://\(s)") {
                    return url
                }
            }
        }
        return nil
    }

}
