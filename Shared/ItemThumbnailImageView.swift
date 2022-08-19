import SwiftUI
import Contacts

struct ItemThumbnailImageView<T: IntoThumbnail>: View {
    @Binding var item: T?

    var body: some View {
        intoImage(item: item)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.all, 0)
    }
}

private func intoImage(item: IntoThumbnail?) -> Image {
    if let item = item {
        if let thumbnail: UIImage = item.intoThumbnail() {
            if let cropped: UIImage = thumbnail.cropToSquare() {
                let size = CGSize(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.width /*sic*/
                )
                let resized: UIImage = cropped.resize(targetSize: size);
                return Image(uiImage: resized)
            }
        }
    }
    //TODO: return blank image
    return Image("")
}
