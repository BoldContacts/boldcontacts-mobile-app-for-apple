import Contacts

#if os(iOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

extension CNContact {
    
    /// Open a given URL that corresponds to a given contact.
    ///
    /// This function is intending to encapsulate a bunch of logging,
    /// corner case detection, error handling, etc.
    ///
    /// TODO: Research what happens if contact doesn't connect.
    ///
    public func openBoldContactsURL() {
        logger.debug(
            """
            openBoldContactsURL start.
            code: 72abfdde4e3cf1db212bf2a7ff5d2320
            self: \(self)
            """
        )
        guard let url = self.intoBoldContactsURL() else {
            logger.error(
                """
                openBoldContactsURL url.
                code: 3fde37f98eec089a91f61701f01bfbaa
                self: \(self)
                """
            )
            return
        }
        let canOpenURL = ZZApplication.shared.canOpenURL(url)
        guard canOpenURL else {
            logger.error(
                """
                openBoldContactsURL application.canOpenURL.
                code: c1fc7dd33e827941b2396bee7f3f3259
                self: \(self)
                url: \(url)
                """
            )
            return
        }
        logger.info(
            """
            openBoldContactsURL application.open.
            code: 6bb82cb0ef1bcbdb8c37314122c74295
            self: \(self)
            url: \(url)
            """
        )
        #if os(iOS)
            UIApplication.shared.open(
                url,
                options: [:],
                completionHandler: openBoldContactsURLCompletion
            )
        #elseif os(OSX)
            let success = NSWorkspace.shared.open(url)
            openBoldContactsURLCompletion(success: success)
        #endif
    }
    
    private func openBoldContactsURLCompletion(
        success: Bool
    ) {
        switch success {
        case true: openBoldContactsURLSuccess()
        case false: openBoldContactsURLFailure()
        }
    }
    
    private func openBoldContactsURLSuccess() {
        logger.debug(
            """
            openBoldContactsURLSuccess.
            code: d30fae7b746f91309fda74e5ef62cb8e
            """
        )
    }

    private func openBoldContactsURLFailure() {
        logger.debug(
            """
            openBoldContactsURLFailure.
            code: d91c1a8413f8f227ba0448693b3ca99c
            """
        )
    }

}
