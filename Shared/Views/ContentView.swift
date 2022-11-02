import SwiftUI
import Contacts

struct ContentView: View {
    @ObservedObject var cursor: Cursor<AppItem>
    
    init(cursor: Cursor<AppItem>) {
        self.cursor = cursor
    }

    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0
        ) {
            if !cursor.isActive() {
                Text("Loading contacts.")
            } else if !cursor.hasItems() {
                Text("No contacts found.")
            } else {
                VStack {
                    ItemThumbnailImageView(item: $cursor.item)
                    ItemTitleTextView(item: $cursor.item)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                NavView(cursor: cursor)
            }
        }
        .accessibilityLabel("ContentView")
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
