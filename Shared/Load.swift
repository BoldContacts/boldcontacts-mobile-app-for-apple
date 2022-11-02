import Foundation
import SwiftUI
import Contacts

func loadContactsFromStoreToCursor(store: CNContactStore, cursor: Cursor<AppItem>) {
    logger.debug("loadContactsFromStoreToCursorDispatch start")
    let dispatchQueue = DispatchQueue(label: "load", qos: .background)
    dispatchQueue.async{
        logger.debug("loadContactsFromStoreToCursor async start")
        #if targetEnvironment(simulator)
        // demoContacts()
        #endif
        let list = store.list()
        DispatchQueue.main.async { cursor.setList(list: list) }
        logger.debug("loadContactsFromStoreToCursor async stop")
    }
    cursor.setCallable(callable: openViaCNContact)
    logger.debug("loadContactsFromStoreToCursorDispatch stop")
}
