//
//  ContentView.swift
//  Refactor
//
//  Created by Qasim Al Mahammedi on 3/18/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var stateController: StateController

    var followers: Int {
        var total = 0
        for follower in stateController.user.followers {
            total += follower
        }
        return total
    }

    var body: some View {
        VStack {
            Text("Total followers: \(followers)")
                .padding()
            Button("Add 10 more followers") {
                stateController.user.followers.append(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
