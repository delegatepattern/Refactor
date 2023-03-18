//
//  RefactorApp.swift
//  Refactor
//
//  Created by user on 3/18/23.
//

import SwiftUI

@main
struct RefactorApp: App {
    @StateObject var stateController = StateController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateController)
        }
    }
}
