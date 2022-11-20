import Contacts

extension Fab {
    
    public static func cnPhoneNumber() -> CNPhoneNumber {
        CNPhoneNumber(stringValue: Fab.phoneNumberAsString())
    }
    
}
