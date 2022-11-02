import Foundation
import SwiftUI
import Contacts

struct AlertForContactStoreAuthorizationStatus: ViewModifier {
    @State var isPresented: Bool
    @State var status: CNAuthorizationStatus
    
    init() {
        self.isPresented = true
        self.status = CNContactStore.authorizationStatus(for: .contacts)
    }
    
    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("BoldContacts"),
                isPresented: $isPresented
            ) {
                Button("OK") {
                    //TODO
                }
            } message: {
            }
    }
}

//extension View {
//    func alertForContactStoreAuthorizationStatus() -> some View {
//        self.modifier(AlertForContactStoreAuthorizationStatus())
//    }
//}
