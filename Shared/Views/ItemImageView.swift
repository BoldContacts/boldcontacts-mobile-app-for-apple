import SwiftUI
import Contacts

struct ItemImageView: View {
    @Binding var item: AppItem?

    var body: some View {
        if let item = item {
            if let image = item.intoZZImage() {
                if let image = image.cropToCenterSquare() {
                    GeometryReader { geo in
                        Image(ZZImage: image)
                            .resizable()
                            .scaledToFit()
                            .accessibilityLabel("ItemImageView")
                            .frame(width: geo.size.width, height: geo.size.height)
                    }
                } else {
                    Image("empty")
                }
            } else {
                Image("empty")
            }
        } else {
            Image("empty")
        }
    }

}
