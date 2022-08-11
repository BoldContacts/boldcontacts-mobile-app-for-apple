import Contacts

public func fabSocialProfileAsCNSocialProfile() -> CNSocialProfile {
    return CNSocialProfile(
        urlString: fabSocialProfileURLString(),
        username: fabSocialProfileUsername(),
        userIdentifier: fabSocialProfileUserIdentifier(),
        service: fabSocialProfileService()
    )
}
