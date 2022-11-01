import Foundation
import SwiftUI

struct AlertForContact: ViewModifier {
    @State var showAlertDiagnostics = !tryFeatureFlagForDiagnostics()

    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertDiagnostics.title"),
                isPresented: $showAlertDiagnostics
            ) {
                Button("Don't Allow") {
                    setFeatureFlagForDiagnostics(flag: false)
                }
                Button("OK") {
                    setFeatureFlagForDiagnostics(flag: true)
                }
            } message: {
                Text(LocalizedStringKey("AlertDiagnostics.message"))
            }
    }
}

extension View {
    func alertDiagnotics() -> some View {
        self.modifier(AlertDiagnotics())
    }
}
