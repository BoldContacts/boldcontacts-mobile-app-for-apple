import SwiftUI
import Contacts

struct ItemTitleTextView: View {
    @Binding var item: (IntoThumbnail & IntoTitle)?

    var body: some View {
        intoText(item: item)
            .frame(maxWidth: .infinity, alignment: .center)
            .multilineTextAlignment(.center)
            .font(Font.largeTitle.weight(.bold))
            .padding(.all, 0)
    }

    private func intoText(item: (IntoThumbnail & IntoTitle)?) -> Text? {
        if let item = item {
            return Text(item.intoTitle() ?? "?")
        }
        return Text("?")
    }

}

