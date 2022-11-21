extension Fab {
    
    public static func unitedStatesStreetAsString() -> String {
        String(Int.random(in: 100...999))
        + " "
        + Fab.treeName()
        + " "
        + Fab.unitedStatesStreetTypeName()
    }
    
}
