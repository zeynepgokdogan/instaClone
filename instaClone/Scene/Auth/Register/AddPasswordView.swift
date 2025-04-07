//
//  AddPasswordView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddPasswordView: View {
    @State private var isNextActive = false
    @ObservedObject var viewModel : RegisterViewModel
    var body: some View {
        VStack(spacing: 20){
            CustomTitle(text: "Add Your Password")
            CustomSubtitle(text: "Your password will be used to protect your account")
            CustomTextField(placeholder: "Enter your password" , text: $viewModel.password , isSecure: true)
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            CustomButton(title: "Create Account") {
                if viewModel.validatePassword() {
                    isNextActive = true
                }
            }
            
            NavigationLink(destination: TabBarView(), isActive: $isNextActive) {
                EmptyView()
            }
        }
        .padding()
        .onAppear {
            viewModel.errorMessage = ""
        }
    }
}

#Preview {
    AddPasswordView(viewModel: RegisterViewModel())
}
