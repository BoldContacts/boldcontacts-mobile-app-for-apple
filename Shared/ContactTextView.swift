import SwiftUI
import Contacts

struct ContactTextView: View {
    @Binding var contact: CNContact?

    var body: some View {
        (toText(contact: contact) ?? Text("?"))
            .frame(maxWidth: .infinity, alignment: .center)
            .multilineTextAlignment(.center)
            .font(Font.largeTitle.weight(.bold))
            .padding(.all, 0)
    }
}

func toText(contact: CNContact?) -> Text? {
    if let contact = contact {
        return Text(
            CNContactFormatter.string(
                from: contact,
                style: .fullName
            ) ?? "?"
        )
    }
    return nil
}
