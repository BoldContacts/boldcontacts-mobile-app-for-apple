import XCTest
import Contacts

class fabCNContactEmailAddressesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let x: [CNLabeledValue<NSString>] = fabCNContactEmailAddresses()
        XCTAssertGreaterThan(0, x.count)
        for lv in x {
            let label: CNLabeledValue = lv.label
            let value: NSString = lv.value
            XCTAssert(value.contains("@"))
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
