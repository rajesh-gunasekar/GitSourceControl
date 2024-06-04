//
//  LoginView.swift
//  GitSourceControl
//
//  Created by Rajesh Gunasekar on 04/06/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var username: String
    @Binding var password: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Git Source Control Tutorial")
                .font(.title)
                .foregroundStyle(Color.blue)
                .padding(.bottom, 20)
            
            TextField(text: $username) {
                Text("Enter username")
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SecureField(text: $password) {
                Text("Enter password")
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button(action: {
                isLoggedIn = true
            }, label: {
                Text("Login")
            })
        }
        .padding()
    }
}

#Preview {
    LoginView(isLoggedIn: .constant(false), username: .constant(""), password: .constant(""))
}
