import Foundation
import SwiftUI
import Contacts

struct AlertForDemonstration: ViewModifier {
    @ObservedObject var cursor: Cursor<AppItem>
    
    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertForDemonstration.title"),
                isPresented: .constant(isPresented())
            ) {
                Button("OK") {
                    ok()
                }
            } message: {
                Text(LocalizedStringKey("AlertForDemonstration.message"))
            }
    }
    
    /// Present the alert when the app has loaded the contact store,
    /// but there are zero contacts, or exactly one contact that is fake.
    public func isPresented() -> Bool {
        logger.debug("AlertForDemonstration isPresented() cursor.state: \(String(describing: cursor.state))")
        guard cursor.state == CursorState.Loaded else { return false }
        if cursor.isEmpty() {
            logger.debug("AlertForDemonstration isPresented() -> true because cursor is empty")
            return true
        }
        if let list = cursor.list {
            if list.count == 1 {
                let contact = list[0]
                if let emailAddress = contact.getEmailAddress() {
                    if emailAddress.value == "boldcontacts@example.com" {
                        logger.debug("AlertForDemonstration isPresented() -> true because cursor list is our trigger")
                        return true
                    }
                }
            }
        }
        logger.debug("AlertForDemonstration isPresented() -> false because EOF")
        return false
    }
    
    func ok() {
        logger.debug("AlertForDemonstration ok()")
        let list = demoPersons()
        logger.debug("AlertForDemonstration ok() list: \(String(describing: list))")
        cursor.setList(list: list)
        cursor.state = CursorState.Loaded
        logger.debug("AlertForDemonstration ok() cursor state: \(String(describing: cursor.state))")
    }
    
}
