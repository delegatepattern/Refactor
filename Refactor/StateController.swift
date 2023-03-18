//
//  StateController.swift
//  Refactor
//
//  Created by Qasim Al Mahammedi on 3/18/23.
//

import Foundation
import SwiftUI

// MARK: - StateController
class StateController: ObservableObject {
    @Published var user = User(followers:[10,20])
}

