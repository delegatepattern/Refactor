//
//  Model.swift
//  
//
//  Created by Qasim Al Mahammedi on 3/18/23.
//

import Foundation

// MARK: - Follower Type
public struct Follower {
    public let number: Int
}

// MARK: - User Type
public struct User {
    private(set) public var followers: [Follower] = []

    public init() {
        followers = []
    }

    public var totalFollowers: Int {
        var total = 0
        for follower in followers {
            total += follower.number
        }
        return total
    }

    public mutating func addFollower(withNumber number: Int) {
        followers.append(Follower(number: number))
    }
}
