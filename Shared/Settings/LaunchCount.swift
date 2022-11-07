import Foundation

public func getLaunchCount() -> Int {
    return UserDefaults.standard.integer(forKey: "launch_count")
}

public func setLaunchCount(_ count: Int) {
    UserDefaults.standard.set(count, forKey: "launch_count")
}

public func addLaunchCount() {
    UserDefaults.standard.set(1 + UserDefaults.standard.integer(forKey: "launch_count"), forKey: "launch_count")
}

