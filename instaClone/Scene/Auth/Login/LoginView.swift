//
//  LoginView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @EnvironmentObject var registerViewModel: RegisterViewModel
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("logo_text").resizable().frame(width: 250, height: 90).padding(.bottom, 20)
                
                CustomTextField(placeholder: "Enter your email", text: $viewModel.email)
                CustomTextField(placeholder: "Password", text: $viewModel.password, isSecure: true)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                        .font(.caption)
                }
                
                CustomButton(title: "Login") {
                    Task {
                        await viewModel.signIn()
                    }
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
                    NavigationLink(destination: AddUsernameView().environmentObject(registerViewModel)) {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                            .padding(.leading, 10)
                    }

                }
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
