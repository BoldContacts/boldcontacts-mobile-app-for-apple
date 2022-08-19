import SwiftUI
import Contacts

struct ContentView<T>: View where T: IntoThumbnail, T: IntoTitle {
    @ObservedObject var cursor: Cursor<T>
    
    init(cursor: Cursor<T>) {
        self.cursor = cursor
    }

    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0
        ) {
            if cursor.list.isEmpty {
                Text("Your device is telling this app that you have zero contacts.")
            } else {
                VStack {
                    ItemThumbnailImageView(item: $item)
                    ItemTitleTextView(item: $item)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                RectangleHorizontalRule()
                NavView(cursor: cursor)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
