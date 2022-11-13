import SwiftUI
import Contacts

struct ItemThumbnailImageView: View {
    @Binding var item: AppItem?

    var body: some View {
        intoImage(item: item)
            .resizable()
            .scaledToFit()
            .accessibilityLabel("ItemThumbnailImageView")
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.all, 0)
    }
    
    private func intoImage(item: AppItem?) -> Image {
        if let item = item {
            if let thumbnail: UIImage = item.intoThumbnail() {
                if let cropped: UIImage = thumbnail.cropToSquare() {
                    let side = min(UIScreen.main.bounds.width, UIScreen.main.bounds.height)
                    let size = CGSize(width: side, height: side)
                    let resized: UIImage = cropped.resize(targetSize: size);
                    return Image(uiImage: resized)
                }
            }
        }
        //TODO: return blank image
        return Image("")
    }

}
