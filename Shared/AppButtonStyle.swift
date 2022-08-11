import SwiftUI

struct AppButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .buttonStyle(PlainButtonStyle())
            .frame(maxWidth: .infinity)
            .tint(Config.appButtonTint)
            .background(configuration.isPressed ? Config.appButtonBackgroundColorPressed : Config.appButtonBackgroundColor)
    }
}
