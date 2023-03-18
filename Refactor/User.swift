//
//  User.swift
//  Refactor
//
//  Created by Qasim Al Mahammedi on 3/18/23.
//

import Foundation
import Model

// MARK: - Firebreak Type - User - Mimicing the old api interface.
struct User {
    var underlying: Model.User

    var followers: [Int] {
        get {
            var num: [Int] = []
            for follower in underlying.followers {
                num.append(follower.number)
            }
            return num
        }
        set {
            underlying = Model.User(followers: newValue)
        }
    }

    init(followers: [Int]) {
        underlying = Model.User(followers: followers)
    }
}

// MARK: - Model.User extension.
extension Model.User {
    init(followers: [Int]) {
        self.init()
        for follower in followers {
            addFollower(withNumber: follower)
        }
    }
}
