import SwiftUI
import Contacts

struct AppView: View {
    @ObservedObject var cursor: Cursor<AppItem>
    
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0
        ) {
            switch cursor.state {
            case CursorState.Loadable:
                Text("CursorState.Loadable")
            case CursorState.Loading:
                Text("CursorState.Loading")
            case CursorState.Loaded:
                if cursor.isEmpty() {
                    Text("CursorState.Loaded & cursor.isEmpty")
                } else {
                    ContactView(cursor: cursor)
                }
            }
        }
        .accessibilityLabel("AppView")
    }
}
