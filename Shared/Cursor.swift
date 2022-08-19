import SwiftUI

/// A data cursor that navigates on the app's list of items
///
class Cursor<T>: ObservableObject {
    @Published var list: [T]
    @Published var index: Int?
    @Published var current: T?

    init(list: [T]) {
        logger.debug("Cursor init. list.count: \(list.count)")
        self.list = list
        if !self.list.isEmpty {
            navIndex(index: 0)
        }
        self.objectWillChange.send()
    }
    
    public func navIndex(index: Int) {
        logger.debug("Cursor navIndex.") //TODO: self.index: \(self.index) index: \(index)")
        if index >= 0 && index < list.count {
            self.index = index
            self.current = list[index]
            self.objectWillChange.send()
        }
    }

    public func navOpen() {
        logger.debug("Cursor navOpen.") //TODO: self.index: \(self.index)")
        if let i = self.index {
            logger.debug("Cursor navOpen index: \(i)")
            let item = list[i]
            logger.info("Cusor navOpen item: \(String(describing: item))")
        }
    }

    public func navPrev() {
        logger.debug("Cursor navPrev.") //TODO: self.index: \(self.index)")
        if let i = self.index {
            logger.debug("Cursor navPrev index: \(i)")
            navIndex(index: (i > 0) ? (i - 1) : (self.list.count - 1))
        }
    }

    public func navNext() {
        logger.debug("Cursor navNext.") //TODO: self.index: \(self.index)")
        if let i = self.index {
            navIndex(index: (i < self.list.count - 1) ? (i + 1) : 0)
        }
    }

}
