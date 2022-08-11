import Contacts

public func fabPostalAddressAsCNPostalAddress() -> CNPostalAddress {
    let x = CNMutablePostalAddress()
    x.street = fabUnitedStatesStreetAsString()
    x.city = fabUnitedStatesCityName()
    x.state = fabUnitedStatesStateCodeAsString()
    x.postalCode = fabUnitedStatesPostalCodeAsString()
    return x
}
