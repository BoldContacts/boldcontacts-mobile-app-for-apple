import SwiftUI
import Contacts

struct NavView: View {
    @ObservedObject var cursor: Cursor<AppItem>
    
    init(cursor: Cursor<AppItem>) {
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
