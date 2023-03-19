//
//  StateController.swift
//  Refactor
//
//  Created by Qasim Al Mahammedi on 3/18/23.
//

import Foundation
import SwiftUI
import Model

// MARK: - StateController
class StateController: ObservableObject {
    @Published var user : Model.User = {
        var user = Model.User()
        user.addFollower(withNumber: 10)
        user.addFollower(withNumber: 20)
        user.addFollower(withNumber: 30)
        return user
    }()
}

