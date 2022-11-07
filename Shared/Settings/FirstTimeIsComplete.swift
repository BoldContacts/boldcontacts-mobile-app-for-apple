import Foundation

public func getFirstTimeIsComplete() -> Bool {
    return UserDefaults.standard.bool(forKey: "first_time_is_complete")
}

public func setFirstTimeIsComplete(_ bool: Bool) {
    UserDefaults.standard.set(bool, forKey: "first_time_is_complete")
}
