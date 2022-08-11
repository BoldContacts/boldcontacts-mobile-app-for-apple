import SwiftUI
import Contacts

struct ContactImageView: View {
    @Binding var contact: CNContact?

    var body: some View {
        (toImage(contact: contact) ?? Image(""))
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.all, 0)
    }
}

private func toImage(contact: CNContact?) -> Image? {
    if let contact = contact {
        if let uiImage = toUIImage(contact: contact) {
            if let cropped = uiImage.cropToSquare() {
                let size = CGSize(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.width /*sic*/
                )
                let resized = cropped.resize(targetSize: size);
                return Image(uiImage: resized)
            }
        }
    }
    return nil
}


private func toUIImage(contact: CNContact?) -> UIImage? {
    if let contact = contact {
        if contact.imageDataAvailable {
            if let thumbnailImageData = contact.thumbnailImageData {
                return UIImage(data: thumbnailImageData)
            }
        }
    }
    return nil
}
