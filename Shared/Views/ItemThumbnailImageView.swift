import SwiftUI
import Contacts

struct ItemThumbnailImageView: View {
    @Binding var item: AppItem?

    var body: some View {
        if let thumbnail = thumbnail(item: item) {
            GeometryReader { geo in
                Image(uiImage: thumbnail)
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel("ItemThumbnailImageView")
                    .frame(width: geo.size.width, height: geo.size.height)
            }
        } else {
            Image("empty")
        }
    }
    
    private func thumbnail(item: AppItem?) -> UIImage? {
        if let item = item {
            if let thumbnail: UIImage = item.intoThumbnail() {
                if let cropped: UIImage = thumbnail.cropToSquare() {
                    return cropped
                }
            }
        }
        return nil
    }

}
