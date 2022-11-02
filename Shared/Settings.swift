import Foundation

//
// Diagnostics
//

public func trySettingsForUseDiagnostics() -> Bool {
    return UserDefaults.standard.object(forKey: "use_diagnostics") != nil
}

public func getSettingsForUseDiagnostics() -> Bool {
    return UserDefaults.standard.bool(forKey: "use_diagnostics")
}

public func setSettingsForUseDiagnostics(flag: Bool) {
    UserDefaults.standard.set(flag, forKey: "use_diagnostics")
}

