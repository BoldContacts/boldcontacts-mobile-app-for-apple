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
                    cursor.navPrev()
                } label: {
                    ButtonImageView(systemName: Config.navPrevButtonImageSystemName)
                }
                .buttonStyle(AppButtonStyle())
                Button {
                    cursor.navCall()
                } label: {
                    ButtonImageView(systemName: Config.navCallButtonImageSystemName)
                }
                .buttonStyle(AppButtonStyle())
                Button {
                    cursor.navNext()
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
