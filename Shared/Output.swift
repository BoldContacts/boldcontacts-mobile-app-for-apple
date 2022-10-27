import Foundation

func outputDirectoryURL() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}

func outputFileURL() -> URL {
    outputDirectoryURL().appendingPathComponent("BoldContacts.txt")
}

func outputString(s: String) {
    do {
        try s.write(to: outputFileURL(), atomically: true, encoding: String.Encoding.utf8)
    } catch {
    }
}

func output(s: String) {
    outputString(s: Date().description + " " + UUID().uuidString + " " + s)
}
