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
            CustomTitle(text: "Add Your Email")
            CustomSubtitle(text: "You'll use the email to sign in to your account")
            CustomTextField(placeholder: "Email", text: $viewModel.email)

            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }

            CustomButton(title: "Next") {
                if viewModel.validateEmail() {
                    isNextActive = true
                }
            }

            NavigationLink(
                destination: AddUsernameView(viewModel: viewModel),
                isActive: $isNextActive,
                label: { EmptyView() }
            )
        }
        .padding()
    }
}

#Preview {
    AddEmailView(viewModel: RegisterViewModel())
}
