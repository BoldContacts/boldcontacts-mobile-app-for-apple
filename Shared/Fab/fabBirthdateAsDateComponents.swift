import Foundation

public func fabBirthdateAsDateComponents() -> DateComponents {
    var x = DateComponents()
    x.year = Int.random(in: 1921...2021)
    x.month = Int.random(in: 1...12)
    x.day = Int.random(in: 1...28)
    return x
}
