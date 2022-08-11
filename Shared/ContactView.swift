import SwiftUI
import Contacts

struct ContactView: View {
    @Binding var contact: CNContact?
    
    var body: some View {
        VStack {
            ContactImageView(contact: $contact)
            ContactTextView(contact: $contact)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
