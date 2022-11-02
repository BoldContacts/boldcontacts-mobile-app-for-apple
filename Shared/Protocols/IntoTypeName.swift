import Foundation

protocol IntoTypeName: IntoType, IntoName {
    func intoTypeName() -> String?
}
