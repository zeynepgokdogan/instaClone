//
//  AddUserNameView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddUsernameView: View {
    @State private var isNextActive = false
    @ObservedObject var viewModel: RegisterViewModel
    
    var body: some View {
        VStack(spacing: 20){
            CustomTitle(text: "Add Your Username")
            CustomSubtitle(text: "Your username will be used to identify you")
            CustomTextField(placeholder: "Enter the username" , text: $viewModel.username)
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            CustomButton(title: "Next") {
                if viewModel.validateUsername() {
                    isNextActive = true
                }
            }
            
           
        }
        .padding()
        .onAppear {
            viewModel.errorMessage = ""
        }
        .navigationDestination(isPresented: $isNextActive) {
            AddEmailView(viewModel: viewModel)
        }
    }
}

#Preview {
    AddUsernameView(viewModel: RegisterViewModel())
}
