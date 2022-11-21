import Contacts

extension Fab {
    
    public static func cnPostalAddress() -> CNPostalAddress {
        let x = CNMutablePostalAddress()
        x.street = Fab.unitedStatesStreetAsString()
        x.city = Fab.unitedStatesCityName()
        x.state = Fab.unitedStatesStateCodeAsString()
        x.postalCode = Fab.unitedStatesPostalCodeAsString()
        return x as CNPostalAddress
    }
    
}
