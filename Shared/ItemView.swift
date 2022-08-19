import SwiftUI
import Contacts

struct ItemView<T>: View where T: IntoThumbnail, T: IntoTitle {
    @Binding var item: T?
    
    var body: some View {
        VStack {
            ItemThumbnailImageView(item: $item)
            ItemTitleTextView(item: $item)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
