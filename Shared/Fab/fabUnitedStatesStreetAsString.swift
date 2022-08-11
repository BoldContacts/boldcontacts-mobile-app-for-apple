public func fabUnitedStatesStreetAsString() -> String {
    return (
        String(Int.random(in: 100...999))
        + " "
        + fabTreeName()
        + " "
        + fabUnitedStatesStreetTypeName()
    )
}
