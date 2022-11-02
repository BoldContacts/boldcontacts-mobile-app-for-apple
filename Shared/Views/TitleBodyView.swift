import Foundation
import SwiftUI

struct TitleBodyView: View {
    var titleString: String
    var bodyString: String
    
    init(_ titleString: String, _ bodyString: String) {
        self.titleString = titleString
        self.bodyString = bodyString
    }

    var body: some View {
        VStack {
            Text(titleString).font(Font.title)
            Text(bodyString).font(Font.body)
        }
        .accessibilityLabel("TitleBodyView")
    }
}
