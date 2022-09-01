import Contacts

public func fabCNSocialProfile() -> CNSocialProfile {
    CNSocialProfile(
        urlString: fabSocialProfileURLString(),
        username: fabSocialProfileUsername(),
        userIdentifier: fabSocialProfileUserIdentifier(),
        service: fabSocialProfileService()
    )
}
