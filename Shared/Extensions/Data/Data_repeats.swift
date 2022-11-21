import Foundation

extension Data {

    public func repeats(
        _ count: Int
    ) -> Data {
        var data = Data(capacity: self.count * count)
        for _ in 0..<count {
            data.append(self)
        }
        return data
    }
}
