import SwiftUI
import Contacts

struct ItemTitleTextView<T>: View where T: IntoTitle {
    @Binding var item: T?

    var body: some View {
        intoText(item: item)
            .frame(maxWidth: .infinity, alignment: .center)
            .multilineTextAlignment(.center)
            .font(Font.largeTitle.weight(.bold))
            .padding(.all, 0)
    }

    private func intoText(item: T?) -> Text? {
        if let item = item {
            return Text(item.intoTitle() ?? "?")
        }
        return Text("?")
    }

}

