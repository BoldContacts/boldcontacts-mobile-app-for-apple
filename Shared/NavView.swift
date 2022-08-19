import SwiftUI
import Contacts

struct NavView: View {
    @ObservedObject var cursor: Cursor<AppItem>
    
    init(cursor: Cursor<AppItem>) {
        self.cursor = cursor
    }

//    var navPrev: (() -> Void)
//    var navNext: (() -> Void)
//    var contact: (() -> CNContact?)
    
//    init(
//        navPrev: @escaping () -> Void,
//        navNext: @escaping () -> Void,
//        contact: @escaping () -> CNContact?
//    ) {
//        self.navPrev = navPrev
//        self.navNext = navNext
//        self.contact = contact
//    }
//
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
