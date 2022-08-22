import SwiftUI

/// A data cursor that navigates on the app's list of items
///
class Cursor<T>: ObservableObject {
    
    // Track the list of items
    @Published var list: [T]
    @Published var index: Int?
    @Published var item: T?
    
    // Call this function when the user selected the "open" functionality
    var callable: (T) -> Void
    
    init(list: [T], callable: @escaping (T) -> Void) {
        logger.debug("Cursor init. list.count: \(list.count)")
        self.list = list
        self.callable = callable
        if !self.list.isEmpty {
            navIndex(index: 0)
        }
        self.objectWillChange.send()
    }
    
    public func navIndex(index: Int) {
        logger.debug("Cursor navIndex.") //TODO: self.index: \(self.index) index: \(index)")
        if index >= 0 && index < list.count {
            self.index = index
            self.item = list[index]
            self.objectWillChange.send()
        }
    }

    public func navCall() {
        logger.debug("Cursor navCall.") //TODO: self.index: \(self.index)")
        if let item = self.item {
            logger.info("Cusor navCall item: \(String(describing: item))")
            callable(item)
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
