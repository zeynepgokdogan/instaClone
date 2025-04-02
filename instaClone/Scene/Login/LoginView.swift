//
//  LoginView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var isNextActive = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("logo_text").resizable().frame(width: 250, height: 90).padding(.bottom, 20)
                
                CustomTextField(placeholder: "Enter your email")
                CustomTextField(placeholder: "Password")
                CustomButton(title: "Login") {
                    isNextActive = true
                }
                
                NavigationLink(destination: TabBarView(), isActive: $isNextActive) {
                    EmptyView()
                }
                Button(action: {
                    
                }) {
                    Text("Forgot password?")
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }
                .padding(.top, 8)
                
                HStack{
                    Rectangle().frame(height: 0.5)
                    Text("OR").foregroundColor(.gray)
                    Rectangle().frame(height: 0.5)
                }
                
                Button(action: {
                    
                }) {
                    HStack{
                        Image("facebook").resizable().frame(width: 30, height: 30)
                        Text(.init("Continue with Facebook"))
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                    }
                }
                
                Spacer()
                Divider()
                HStack {
                        Text("Don't have an account?").foregroundColor(.gray)
                        NavigationLink(destination: AddEmailView()) {
                            Text("Sign Up")
                                .foregroundColor(.blue)
                                .padding(.leading, 10)
                        }
                    }
            }
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
