import Foundation

func outputDirectoryURL() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}

func outputFileURL() -> URL {
    outputDirectoryURL().appendingPathComponent("BoldContacts.txt")
}

func outputString(string: String) {
    logger.info("outputString: url: \(outputFileURL()) string: \(string)")
    if getSettingsForUseDiagnostics() {
        do {
            try string.write(to: outputFileURL(), atomically: true, encoding: String.Encoding.utf8)
        } catch {
        }
    }
}

func output(s: String) {
    outputString(string: Date().description + " " + UUID().uuidString + " " + s)
}
