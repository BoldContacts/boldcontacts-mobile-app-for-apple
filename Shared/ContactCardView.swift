import SwiftUI
import Contacts
import ContactsUI

struct ContactCardView: UIViewControllerRepresentable {
    @Binding var contact: CNContact?
    
    typealias UIViewControllerType = CNContactViewController
  
    func makeUIViewController(context: Context) -> CNContactViewController {
        var vc: CNContactViewController
        if let contact = contact {
            vc = CNContactViewController(for: contact)
        } else {
            vc = CNContactViewController(forNewContact: CNMutableContact())
        }
        vc.allowsActions = true
        vc.allowsEditing = true
        vc.shouldShowLinkedContacts = true
        vc.hidesBottomBarWhenPushed = true
        return vc
    }

    func updateUIViewController(_ uiViewController: CNContactViewController, context: Context) {
        //noop
    }
}
