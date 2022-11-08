import Foundation
import SwiftUI
import Contacts

struct AlertForDemonstration: ViewModifier {
    @ObservedObject var cursor: Cursor<AppItem>
    
    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertForDemonstration.title"),
                isPresented: .constant(isPresented())
            ) {
                Button("OK") {
                    cursor.setList(list: demoPersons())
                    cursor.state = CursorState.Loaded
                }
            } message: {
                Text(LocalizedStringKey("AlertForDemonstration.message"))
            }
    }
    
    public func isPresented() -> Bool {
        return cursor.state == CursorState.Loaded && cursor.isEmpty()
    }
    
}
