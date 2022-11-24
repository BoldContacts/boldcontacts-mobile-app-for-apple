extension Fab {
    
    public static func zzImage() -> ZZImage? {
        let name = Fab.sfSymbolsLetterCircle()
        guard let image = BoldContacts.ZZImage(systemName: name) else {
            logger.error("\(#file) zzImage name: \(name)")
            return nil
        }
        return image
    }
    
}
