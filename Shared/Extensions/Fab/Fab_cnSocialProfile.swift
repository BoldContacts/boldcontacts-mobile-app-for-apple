import Contacts

extension Fab {
    
    public static func cnSocialProfile() -> CNSocialProfile {
        CNSocialProfile(
            urlString: Fab.socialProfileURLString(),
            username: Fab.socialProfileUsername(),
            userIdentifier: Fab.socialProfileUserIdentifier(),
            service: Fab.socialProfileService()
        )
    }
    
}
