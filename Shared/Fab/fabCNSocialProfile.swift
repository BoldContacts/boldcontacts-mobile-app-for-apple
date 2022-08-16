import Contacts

public func fabCNSocialProfile() -> CNSocialProfile {
    return CNSocialProfile(
        urlString: fabSocialProfileURLString(),
        username: fabSocialProfileUsername(),
        userIdentifier: fabSocialProfileUserIdentifier(),
        service: fabSocialProfileService()
    )
}
