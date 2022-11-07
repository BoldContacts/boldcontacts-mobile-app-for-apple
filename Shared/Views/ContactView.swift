import SwiftUI
import Contacts

struct ContactView: View {
    @ObservedObject var cursor: Cursor<AppItem>
    
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0
        ) {
            VStack {
                ItemThumbnailImageView(item: $cursor.item)
                ItemTitleTextView(item: $cursor.item)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            NavView(cursor: cursor)
        }
        .accessibilityLabel("ContactView")
    }
    
}
