import Foundation

extension String {
    public var xtrim: String {
        self.filter { !$0.isWhitespace }
    }
}
