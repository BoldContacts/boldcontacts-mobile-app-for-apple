import XCTest
import Contacts

class fabCNContactSocialProfilesTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func test() throws {
//        let x: [CNLabeledValue<CNSocialProfile>] = fabCNContactSocialProfiles()
//        XCTAssertGreaterThan(0, x.count)
//        for lv: CNLabeledValue<CNSocialProfile> in x {
//            let label: String? = lv.label
//            XCTAssertNotNil(label)
//            let value: CNSocialProfile = lv.value
//            XCTAssert(value.urlString.contains("://"))
//        }
//    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
