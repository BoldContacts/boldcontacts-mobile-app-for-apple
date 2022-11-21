import SwiftUI
import Contacts

struct ItemThumbnailImageView: View {
    @Binding var item: AppItem?

    var body: some View {
        if let thumbnail = thumbnail(item: item) {
            GeometryReader { geo in
                Image(ZZImage: thumbnail)
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel("ItemThumbnailImageView")
                    .frame(width: geo.size.width, height: geo.size.height)
            }
        } else {
            Image("empty")
        }
    }
    
    private func thumbnail(item: AppItem?) -> ZZImage? {
        if let item = item {
            if let thumbnail: ZZImage = item.intoThumbnail() {
                if let cropped: ZZImage = thumbnail.cropToCenterSquare() {
                    return cropped
                }
            }
        }
        return nil
    }

}
