import Foundation

func outputString(string: String) {
    logger.debug("\(#file) outputString(…) string: \(string)")
    guard let url = FileManager.defaultDocumentDirectoryFileURL(fileName: "BoldContacts.txt") else {
        logger.error("\(#file) outputString(…) url failure")
        return
    }
    logger.debug("\(#file) outputString(…) url: \(url)")
    do {
        try string.write(to: url, atomically: true, encoding: String.Encoding.utf8)
    } catch {
        logger.error("\(#file) outputString(…) write failure")
    }
}

func output(s: String) {
    outputString(string: Date().description + " " + UUID().uuidString + " " + s)
}
