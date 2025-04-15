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
                CustomTitle(text: "add_password_title".localized)
                CustomSubtitle(text: "password_protection_info".localized)
                CustomTextField(placeholder: "password_placeholder".localized , text: $viewModel.password , isSecure: true)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                        .font(.caption)
                }
                
                CustomButton(title: "create_account_button".localized) {
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
