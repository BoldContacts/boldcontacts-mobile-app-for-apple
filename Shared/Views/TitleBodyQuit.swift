import Foundation
import SwiftUI
import UIKit

struct TitleBodyQuitView: View {
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
            Button("Quit") {
                //TODO
                //UIApplication.shared.terminate(nil)
           }
        }
    }
}

