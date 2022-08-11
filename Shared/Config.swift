import Foundation
import SwiftUI

struct Config {
    
    // Messages
    static let msgRequestContactsAccess = "This app needs to access your contacts.\n\nPlease launch your Settings app. You should see a list of apps, including this \"BoldCaller\" app; tap it.\n\nYou should see a headline \"ALLOW BOLDCALLER TO ACCESS\". You should see the \"Contacts\" slider choice. Enable it. Then relaunch \"BoldCaller\"."

    // Application button defaults
    static let appButtonWidth = 64.0
    static let appButtonTint = Color.black
    static let appButtonPadding = 32.0
    static let appButtonBackgroundColor = Color.white
    static let appButtonBackgroundColorPressed = Color.green

    // Navigation button visibility true/false
    static let navPrev = true
    static let navNext = true
    static let navVideo = true
    static let navVoice = false
    static let navMessage = false
    static let navEmail = false
    static let navSocial = false
    static let navPerson = false
 
    // Navigation button Image(systemName: *)
    static let navPrevButtonImageSystemName = "arrow.left.circle"
    static let navNextButtonImageSystemName = "arrow.right.circle"
    static let navVideoButtonImageSystemName = "video.circle"
    static let navVoiceButtonImageSystemName = "phone.circle"
    static let navMessageButtonImageSystemName = "paperplane.circle"
    static let navEmailButtonImageSystemName = "envelope.circle"
    static let navSocialButtonImageSystemName = "link.circle"
    static let navPersonButtonImageSystemName = "person.circle"
    
}

