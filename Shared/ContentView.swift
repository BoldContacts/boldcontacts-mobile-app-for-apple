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
            if cursor.isActive() {
                if cursor.hasItems() {
                    VStack {
                        ItemThumbnailImageView(item: $cursor.item)
                        ItemTitleTextView(item: $cursor.item)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    NavView(cursor: cursor)
                } else {
                    Text("Your device is telling this app that you have zero contacts.")
                }
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
