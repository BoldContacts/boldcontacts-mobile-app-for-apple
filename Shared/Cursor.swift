import SwiftUI

enum CursorState {
    case Loadable
    case Loading
    case Loaded
}

/// A data cursor that navigates on the app's list of items
///
class Cursor<T>: ObservableObject {
    
    // Track the list of items
    @Published var list: [T]?
    @Published var index: Int?
    @Published var item: T?
    @Published var state = CursorState.Loadable
    
    // Call this function when the user selects the item.
    // Return true=success or false=failure.
    var callable: (T) -> Bool = callableDefault

    class func callableDefault(_: T) -> Bool {
        return false
    }

    init() {}
    
    public func isEmpty() -> Bool {
        return self.list == nil || self.list!.isEmpty
    }

    /// Accessor
    public func setList(list: [T]?) {
        self.list = list
        if let l = list {
            if l.isEmpty {
                self.index = nil
                self.item = nil
            } else {
                self.index = 0
                self.item = l[0]
            }
        }
        self.objectWillChange.send()
    }
    
    /// Accessor
    public func setCallable(callable:  @escaping (T) -> Bool) {
        self.callable = callable
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
            output(s: "contacting")
            let b = callable(item)
            if b {
                logger.info("Cursor call success")
            } else {
                logger.error("Cursor call failure")
            }
        }
    }

    /// Go to the list's item at the given index.
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
        if let l = self.list {
            if index >= 0 && index < l.count {
                self.index = index
                self.item = l[index]
                self.objectWillChange.send()
            }
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
        if let l = self.list {
            if let i = self.index {
                logger.debug("Cursor prev index: \(i)")
                go(index: (i > 0) ? (i - 1) : (l.count - 1))
            }
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
        if let l = self.list {
            if let i = self.index {
                go(index: (i < l.count - 1) ? (i + 1) : 0)
            }
        }
    }

}
