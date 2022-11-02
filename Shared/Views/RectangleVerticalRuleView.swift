import SwiftUI

func RectangleVerticalRuleView() -> some View {
    return Rectangle()
        .fill(.black)
        .frame(width: 16.0)
        .frame(maxHeight: .infinity)
        .padding(.all, 0)
        .accessibilityLabel("RectangleVerticalRuleView")
}
