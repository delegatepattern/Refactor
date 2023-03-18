import XCTest
@testable import Model

// MARK: - Follower Tests
final class FollowerTests: XCTestCase {
    func testZeroFollowers() {
        let follower = Follower(number: 0)
        XCTAssertEqual(follower.number, 0)
    }

    func testCountFollowers() {
        let followers = Follower(number: 20)
        XCTAssertEqual(followers.number, 20)
    }
}

// MARK: - User Tests
final class UserTests: XCTestCase {
    func testEmptyUser() {
        let user = User()
        XCTAssertEqual(user.followers.count, 0)
        XCTAssertEqual(user.totalFollowers, 0)
    }

    func testAppendFollowersToUser() {
        var user = User()
        user.addFollower(withNumber: 20)
        XCTAssertEqual(user.followers.count, 1)
        XCTAssertEqual(user.totalFollowers, 20)
    }

    func testAddMultipleFollowersToUser() {
        var user = User()
        user.addFollower(withNumber: followers[0].number)
        user.addFollower(withNumber: followers[1].number)
        user.addFollower(withNumber: followers[2].number)
        XCTAssertEqual(user.followers.count, 3)
        XCTAssertEqual(user.totalFollowers, 60)
    }
}

// MARK: Private extenions.
private extension UserTests {
    var followers: [Follower] {
        return [Follower(number: 10),
                Follower(number: 20),
                Follower(number: 30),
        ]
    }
}
