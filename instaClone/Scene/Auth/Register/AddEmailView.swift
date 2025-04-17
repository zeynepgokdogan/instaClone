//
//  AddEmail.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddEmailView: View {
    @ObservedObject var viewModel: RegisterViewModel
    @State private var isNextActive = false
    
    var body: some View {
        VStack(spacing: 20) {
            CustomTitle(text: "add_email_title".localized)
            CustomSubtitle(text:"youll_use_email_to_signin".localized)
            CustomTextField(placeholder: "email_placeholder".localized, text: $viewModel.email)
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            CustomButton(title: "next_button".localized) {
                if viewModel.validateEmail() {
                    isNextActive = true
                }
            }
        }
        .padding()
        .onAppear {
            viewModel.errorMessage = ""
        }
        .navigationDestination(isPresented: $isNextActive) {
            AddPasswordView(viewModel: viewModel)
        }
    }
}

#Preview {
    AddEmailView(viewModel: RegisterViewModel())
}
