import AppKit

extension NSImage: IntoCGImage {
    
    public func intoCGImage() -> CGImage? {
        return self.cgImage(forProposedRect: nil, context: nil, hints: nil)
    }
    
}
