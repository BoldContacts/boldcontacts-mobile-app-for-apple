import Foundation
import SwiftUI

struct AlertForIntroduction: ViewModifier {
    @ObservedObject var cursor: Cursor<AppItem>

    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertForIntroduction.title"),
                isPresented: .constant(isPresented())
            ) {
                Button("OK") {
                    setIntroductionIsComplete(true)
                }
            } message: {
                Text(LocalizedStringKey("AlertForIntroduction.message"))
            }
    }
    
    public func isPresented() -> Bool {
        return cursor.state == CursorState.Loaded && !getIntroductionIsComplete()
    }
    
}
