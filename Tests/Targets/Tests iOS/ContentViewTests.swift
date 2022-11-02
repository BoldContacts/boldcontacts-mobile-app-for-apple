import XCTest
import Contacts
import ViewInspector
@testable import BoldContacts

//extension ContentView: Inspectable {}

final class ContentViewTests: XCTestCase {

    func callable(_: AppItem) -> Bool {
        return false
    }

    func testItemTitleTextView() throws {
//        let contact = CNMutableContact()
//        contact.givenName = "Alice"
//        contact.familyName = "Adams"
//        let cursor: Cursor<AppItem> = Cursor(list: [contact], callable: callable)
//        let sut = ContentView(cursor: cursor)
//        let expect = "Alice Adams"
//        let actual = try sut.inspect().text().string()
//        XCTAssertEqual(expect, actual)
    }

    func testItemThumbnailImageView() throws {
//        let contact = CNMutableContact()
//        let image = UIImage(systemName: "star.fill")
//        let imageData = image!.jpegData(compressionQuality: 1.0)
//        contact.imageData = imageData
//        let cursor: Cursor<AppItem> = Cursor(list: [contact], callable: callable)
//        let sut = ContentView(cursor: cursor)
//        let actual = try sut.inspect().image().data()
//        XCTAssertEqual(expect, actual)
    }

}
