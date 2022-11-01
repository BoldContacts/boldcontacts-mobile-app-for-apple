import Foundation
import SwiftUI

struct AlertForDiagnotics: ViewModifier {
    @State var showAlertForDiagnostics = !tryFeatureFlagForDiagnostics()

    func body(content: Content) -> some View {
        content
            .alert(
                LocalizedStringKey("AlertForDiagnostics.title"),
                isPresented: $showAlertForDiagnostics
            ) {
                Button("Don't Allow") {
                    setFeatureFlagForDiagnostics(flag: false)
                }
                Button("OK") {
                    setFeatureFlagForDiagnostics(flag: true)
                }
            } message: {
                Text(LocalizedStringKey("AlertForDiagnostics.message"))
            }
    }
}

extension View {
    func alertDiagnotics() -> some View {
        self.modifier(AlertDiagnotics())
    }
}
