//
//  HomeView.swift
//  GitSourceControl
//
//  Created by Rajesh Gunasekar on 04/06/24.
//

import SwiftUI

struct HomeView: View {
    var username: String
    
    var body: some View {
        VStack {
            Text("Hurray, Welcome \(username)! You logged in")
        }
    }
}

#Preview {
    HomeView(username: "Rajesh")
}
