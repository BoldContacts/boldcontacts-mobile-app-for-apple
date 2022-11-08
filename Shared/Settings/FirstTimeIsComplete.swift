import Foundation

public func getIntroductionIsComplete() -> Bool {
    return UserDefaults.standard.bool(forKey: "introduction_is_complete")
}

public func setIntroductionIsComplete(_ bool: Bool) {
    UserDefaults.standard.set(bool, forKey: "introduction_is_complete")
}
