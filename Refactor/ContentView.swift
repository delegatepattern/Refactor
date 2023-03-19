//
//  ContentView.swift
//  Refactor
//
//  Created by Qasim Al Mahammedi on 3/18/23.
//

import SwiftUI
import Model

struct ContentView: View {
    @EnvironmentObject var stateController: StateController

    var followers: Int {
        stateController.user.totalFollowers
    }

    var body: some View {
        VStack {
            Text("Total followers: \(followers)")
                .padding()
            Button("Add 10 more followers") {
                stateController.user.addFollower(withNumber: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
