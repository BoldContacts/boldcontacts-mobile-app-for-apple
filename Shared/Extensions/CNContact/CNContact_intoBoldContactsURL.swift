import Contacts

extension CNContact {
    
    /// Get this contact's primary URL string representation.
    ///
    /// Return: a URL string representation.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let url: URL? = contact.intoBoldContactsURL()
    ///
    /// The implementation uses a heuristic filter to choose the best URL.
    ///
    ///   * Prefer a label "BoldContacts", then "FaceTime", then any.
    ///
    ///   * Prefer a URL, then phone number, then email address.
    ///
    /// 1. Is there a "BoldContacts" label that's viable?
    ///
    ///   1.1. A URL address with label "BoldContacts" -> return x
    ///
    ///   1.2. A phone number with label "BoldContacts" -> return "tel://" + x
    ///
    ///   1.3. An email address with label "BoldContacts" -> return "mailto://" + x
    ///
    /// 2. Is there a "FaceTime" label that's viable?
    ///
    ///   2.1. A URL address with label "FaceTime" -> return x
    ///
    ///   2.2. A phone number with label "FaceTime" -> return "facetime://" + x
    ///
    ///   2.3. An email address with label "FaceTime" -> return "facetime://" + x
    ///
    /// 3. Any other viable item?
    ///
    ///   3.1. A URL address -> return x
    ///
    ///   3.2. A phone number -> return "tel://" + x
    ///
    ///   3.3. An email address -> return "mailto://" + x
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
