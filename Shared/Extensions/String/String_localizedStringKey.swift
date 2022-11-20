import Foundation
import SwiftUI

extension String {
    
    public func localizedStringKey() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }

}
