import Foundation
import SwiftUI

struct AlertForFirstTime: ViewModifier {
    @ObservedObject var cursor: Cursor<AppItem>

    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertForFirstTime.title"),
                isPresented: .constant(isPresented())
            ) {
                Button("OK") {
                    setFirstTimeIsComplete(true)
                }
            } message: {
                Text(LocalizedStringKey("AlertForFirstTime.message"))
            }
    }
    
    public func isPresented() -> Bool {
        logger.debug("AlertForFirstTime isPresented() cursor.state: \(String(describing: cursor.state))")
        guard cursor.state == CursorState.Loaded else { return false }
        return !getFirstTimeIsComplete()
    }
    
}
