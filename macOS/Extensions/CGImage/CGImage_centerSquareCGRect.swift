import AppKit

extension CGImage {
    
    public func centerSquareCGRect() -> CGRect {
        let width = CGFloat(self.width)
        let height = CGFloat(self.height)
        let side = min(width, height)
        let x = (width - side) / 2
        let y = (height - side) / 2
        return CGRect(x: x, y: y, width: side, height: side)
    }
    
}
