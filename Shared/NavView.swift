import SwiftUI
import Contacts

struct NavView<T>: View where T: IntoThumbnail, T: IntoTitle {
    @ObservedObject var cursor: Cursor<T>
    
    init(cursor: Cursor<T>) {
        self.cursor = cursor
    }

    var body: some View {
        VStack(
            alignment: .center,
            spacing: 0
        ) {
            HStack {
                if cursor.current != nil {
                    Button {
                        cursor.navPrev()
                    } label: {
                        ButtonImageView(systemName: Config.navPrevButtonImageSystemName)
                    }
                    .buttonStyle(AppButtonStyle())
                    Button {
                        cursor.navOpen()
                    } label: {
                        ButtonImageView(systemName: Config.navOpenButtonImageSystemName)
                    }
                    .buttonStyle(AppButtonStyle())
                    Button {
                        cursor.navNext()
                    } label: {
                        ButtonImageView(systemName: Config.navNextButtonImageSystemName)
                    }
                    .buttonStyle(AppButtonStyle())
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}
