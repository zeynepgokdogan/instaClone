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
                
                CustomTextField(placeholder: "email_placeholder".localized, text: $viewModel.email)
                CustomTextField(placeholder: "password_placeholder".localized, text: $viewModel.password, isSecure: true)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                        .font(.caption)
                }
                
                CustomButton(title: "login_button".localized) {
                    Task {
                        await viewModel.signIn()
                    }
                }
                Button(action: {
                    
                }) {
                    Text("forgot_password".localized)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                }
                .padding(.top, 8)
                
                HStack{
                    Rectangle().frame(height: 0.5)
                    Text("or_seperator".localized).foregroundColor(.gray)
                    Rectangle().frame(height: 0.5)
                }
                
                Button(action: {
                    
                }) {
                    HStack{
                        Image("facebook").resizable().frame(width: 30, height: 30)
                        Text(.init(""))
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                    }
                }
                
                Spacer()
                Divider()
                HStack {
                    Text("no_account_prompt".localized).foregroundColor(.gray)
                    NavigationLink(destination: AddUsernameView().environmentObject(registerViewModel)) {
                        Text("sign_up_button".localized)
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
           .environmentObject(RegisterViewModel())
}
