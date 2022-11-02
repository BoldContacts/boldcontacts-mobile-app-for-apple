import SwiftUI

func RectangleHorizontalRuleView() -> some View {
    return Rectangle()
        .fill(.black)
        .frame(maxWidth: .infinity)
        .frame(height: 16.0)
        .padding(.all, 0)
        .accessibilityLabel("RectangleHorizontalRuleView")
}
