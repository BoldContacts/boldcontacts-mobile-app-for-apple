import SwiftUI
import Contacts

struct NavView: View {
    @ObservedObject var cursor: Cursor<IntoThumbnail & IntoTitle>
    
    init(cursor: Cursor<IntoThumbnail & IntoTitle>) {
        self.cursor = cursor
    }

    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0
        ) {
            HStack {
                Button {
                    cursor.prev()
                } label: {
                    ButtonImageView(systemName: Config.navPrevButtonImageSystemName)
                }
                .buttonStyle(AppButtonStyle())
                Button {
                    cursor.call()
                } label: {
                    ButtonImageView(systemName: Config.navCallButtonImageSystemName)
                }
                .buttonStyle(AppButtonStyle())
                Button {
                    cursor.next()
                } label: {
                    ButtonImageView(systemName: Config.navNextButtonImageSystemName)
                }
                .buttonStyle(AppButtonStyle())
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}
