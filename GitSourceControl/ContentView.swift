//
//  ContentView.swift
//  GitSourceControl
//
//  Created by Rajesh Gunasekar on 04/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var isLoggedIn: Bool = false
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        if !isLoggedIn {
            LoginView(isLoggedIn: $isLoggedIn, username: $username, password: $password)
        }
    }
}

#Preview {
    ContentView()
}
