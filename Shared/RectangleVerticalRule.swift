import SwiftUI

func RectangleVerticalRule() -> some View {
    return Rectangle()
        .fill(.black)
        .frame(width: 16.0)
        .frame(maxHeight: .infinity)
        .padding(.all, 0)
}
