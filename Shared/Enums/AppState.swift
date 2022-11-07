//import Foundation
//
//enum AppState: ObservableObject {
//    case Init
//    case AlertForDemonstration
//    case AlertForDiagnostics
//    case Browse
//    case Unknown
//}
//
//extension AppState {
//
//    public func isInit() -> Bool {
//        return self == .Init
//    }
//
//    public func isAlertForDemonstration() -> Bool {
//        return self == .AlertForDemonstration
//    }
//
//    public func isAlertForDiagnostics() -> Bool {
//        return self == .AlertForDiagnostics
//    }
//
//    public func isBrowse() -> Bool {
//        return self == .Browse
//    }
//
//    public func isUnknown() -> Bool {
//        return self == .Browse
//    }
//
//    public mutating func next() -> AppState {
//        switch self {
//        case .Init:
//            return ,AlertForDemonstration
//        case .AlertForDemonstration:
//            return .AlertForDiagnostics
//        case .AlertForDiagnostics:
//            return .Browse
//        case .Browse:
//            return .Browse
//        case .Unknown:
//            return .Unknown
//        @unknown default:
//            return .Unknown
//        }
//    }
//
//}

