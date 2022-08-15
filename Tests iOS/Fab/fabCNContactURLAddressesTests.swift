import XCTest
import Contacts

class fabCNContactURLAddressesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test() throws {
        let x: [CNLabeledValue<NSString>] = fabCNContactURLAddresses()
        XCTAssertGreaterThan(0, x.count)
        for lv in x {
            let label: CNLabeledValue = lv.label
            let value: NSString = lv.value
            XCTAssert(value.contains("://"))
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
