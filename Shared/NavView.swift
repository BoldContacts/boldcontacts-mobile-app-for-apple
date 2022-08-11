import SwiftUI
import Contacts

struct NavView: View {
    @ObservedObject var cursor: Cursor
    
    init(cursor: Cursor) {
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
                if let contact = cursor.current {
                    if Config.navPrev {
                        Button {
                            cursor.navPrev()
                        } label: {
                            ButtonImageView(systemName: Config.navPrevButtonImageSystemName)
                        }
                        .buttonStyle(AppButtonStyle())
                    }
                    if Config.navVideo {
                        if let string = contact.primaryFaceTimeValueAsString() {
                            Button {
                                openViaFaceTime(string: string)
                            } label: {
                                ButtonImageView(systemName: Config.navVideoButtonImageSystemName)
                            }
                            .buttonStyle(AppButtonStyle())
                        }
                    }
                    if Config.navVoice {
                        if contact.hasPhoneNumber() {
                            Button {
                                if let phoneNumber = contact.primaryPhoneNumberValueAsString() {
                                    openViaTel(string: phoneNumber)
                                }

                            } label: {
                                ButtonImageView(systemName: Config.navVideoButtonImageSystemName)
                            }
                            .buttonStyle(AppButtonStyle())
                        }
                    }
                    if Config.navMessage {
                        if contact.hasPhoneNumber() {
                            Button {
                                if let phoneNumber = contact.primaryPhoneNumberValueAsString() {
                                    openViaSMS(string: phoneNumber)
                                }
                            } label: {
                                ButtonImageView(systemName: Config.navVideoButtonImageSystemName)
                            }
                            .buttonStyle(AppButtonStyle())
                        }
                    }
                    if Config.navEmail && contact.hasEmailAddress() {
                        Button {
                            if let emailAddress = contact.primaryEmailAddressValueAsString() {
                                openViaMailTo(string: emailAddress)
                            }
                        } label: {
                            ButtonImageView(systemName: Config.navEmailButtonImageSystemName)
                        }
                        .buttonStyle(AppButtonStyle())
                    }
                    if Config.navSocial && contact.hasSocialProfile() {
                        Button {
                            if let socialProfileURLString = contact.primarySocialProfileValueURLString() {
                                openViaString(string: socialProfileURLString)
                            }
                        } label: {
                            ButtonImageView(systemName: Config.navSocialButtonImageSystemName)
                        }
                        .buttonStyle(AppButtonStyle())
                    }
                    if Config.navPerson {
                        Button {
                            openViaContactIdentifier(string: contact.identifier)
                        } label: {
                            ButtonImageView(systemName: Config.navPersonButtonImageSystemName)
                        }
                        .buttonStyle(AppButtonStyle())
                    }
                    if Config.navNext {
                        Button {
                            cursor.navNext()
                        } label: {
                            ButtonImageView(systemName: Config.navNextButtonImageSystemName)
                        }
                        .buttonStyle(AppButtonStyle())
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}
