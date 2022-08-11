import SwiftUI
import Contacts

struct ContentView: View {
    @ObservedObject var cursor: Cursor
    
    init(cursor: Cursor) {
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
                ContactView(contact: $cursor.current)
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
