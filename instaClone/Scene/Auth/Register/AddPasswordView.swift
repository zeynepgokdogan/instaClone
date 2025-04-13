//
//  AddPasswordView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddPasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegisterViewModel
    
    var body: some View {
        NavigationStack {
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
                    Task {
                        do {
                            try await viewModel.createUser()
                        } catch {
                            viewModel.errorMessage = "Something went wrong: \(error.localizedDescription)"
                            print("Error creating user: \(error.localizedDescription)")
                        }
                    }
                }


                
            }
            .padding()
            .onAppear {
                viewModel.errorMessage = ""
            }
        }
    }
}

#Preview {
    AddPasswordView().environmentObject(RegisterViewModel())
}
