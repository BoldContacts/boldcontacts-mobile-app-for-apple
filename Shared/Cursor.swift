import SwiftUI

/// A data cursor that navigates on the app's list of items
///
class Cursor<T>: ObservableObject {
    
    // Track the list of items
    @Published var list: [T]
    @Published var index: Int?
    @Published var item: T?
    
    // Call this function when the user selects the item.
    // Return success (true) or failure (false).
    var callable: (T) -> Bool

    /// Initialize.
    ///
    /// - Parameter list: A list of items.
    /// - Parameter callable:A function to call when an item is chosen; return true=success or false=failure.
    ///
    init(list: [T], callable: @escaping (T) -> Bool) {
        logger.debug("Cursor init. list.count: \(list.count)")
        self.list = list
        self.callable = callable
        if !self.list.isEmpty {
            go(index: 0)
        }
        self.objectWillChange.send()
    }
    
    /// Call the callable function with the current item.
    ///
    /// Example:
    ///
    ///     let cursor: Cursor = …
    ///     cursor.call()
    ///
    public func call() {
        logger.debug("Cursor call.") //TODO: self.index: \(self.index)")
        if let item = self.item {
            logger.info("Cusor call item: \(String(describing: item))")
            let b = callable(item)
            if b {
                logger.info("Cursor call success")
            } else {
                logger.error("Cursor call failure")
            }
        }
    }

    /// Go to a the list's item at the given index.
    ///
    /// - Parameter index: The new index.
    ///
    /// Example:
    ///
    ///     let cursor: Cursor = …
    ///     cursor.go(index: 0)
    ///
    public func go(index: Int) {
        logger.debug("Cursor go.") //TODO: self.index: \(self.index) index: \(index)")
        if index >= 0 && index < list.count {
            self.index = index
            self.item = list[index]
            self.objectWillChange.send()
        }
    }

    /// Go to the list's previous item.
    ///
    /// Example:
    ///
    ///     let cursor: Cursor = …
    ///     cursor.prev()
    ///
    public func prev() {
        logger.debug("Cursor prev.") //TODO: self.index: \(self.index)")
        if let i = self.index {
            logger.debug("Cursor prev index: \(i)")
            go(index: (i > 0) ? (i - 1) : (self.list.count - 1))
        }
    }

    /// Go to the list's next item.
    ///
    /// Example:
    ///
    ///     let cursor: Cursor = …
    ///     cursor.next()
    ///
    public func next() {
        logger.debug("Cursor next.") //TODO: self.index: \(self.index)")
        if let i = self.index {
            go(index: (i < self.list.count - 1) ? (i + 1) : 0)
        }
    }

}
