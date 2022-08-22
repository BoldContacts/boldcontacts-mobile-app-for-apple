import SwiftUI
import Contacts

struct ItemTitleTextView: View {
    @Binding var item: AppItem?

    var body: some View {
        intoText(item: item)
            .frame(maxWidth: .infinity, alignment: .center)
            .multilineTextAlignment(.center)
            .font(Font.largeTitle.weight(.bold))
            .padding(.all, 0)
    }

    private func intoText(item: AppItem?) -> Text? {
        if let item = item {
            return Text(item.intoTitle() ?? "?")
        }
        return Text("?")
    }

}

