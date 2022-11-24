import XCTest
@testable import BoldContacts

final class UIDevice_isSimulatorTest: XCTestCase {

    func test() throws {
        let bool = UIDevice.current.isSimulator
        XCTAssertNotNil(bool)
    }
}
