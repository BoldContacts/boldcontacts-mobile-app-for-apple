import SwiftUI

func ButtonImageView(systemName: String) -> some View {
    return Image(systemName: systemName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100.0)
}
