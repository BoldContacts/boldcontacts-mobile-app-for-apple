import Foundation
import SwiftUI

struct AlertForDiagnostics: ViewModifier {
    @State var alertForDiagnosticsIsPresented = !trySettingsForUseDiagnostics()

    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertForDiagnostics.title"),
                isPresented: $alertForDiagnosticsIsPresented
            ) {
                Button("Don't Allow") {
                    setSettingsForUseDiagnostics(flag: false)
                }
                Button("OK") {
                    setSettingsForUseDiagnostics(flag: true)
                }
            } message: {
                Text(LocalizedStringKey("AlertForDiagnostics.message"))
            }
    }
}
