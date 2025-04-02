//
//  AddPasswordView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddPasswordView: View {
    @State private var isNextActive = false
    var body: some View {
        VStack(spacing: 20){
            CustomTitle(text: "Add Your Password")
            CustomSubtitle(text: "Your password will be used to protect your account")
            CustomTextField(placeholder: "Enter your password" , isSecure: true)
            CustomButton(title: "Create Account") {
                isNextActive = true
            }
            NavigationLink(destination: TabBarView(), isActive: $isNextActive) {
                EmptyView()
            }
        }
        .padding()
    }
}

#Preview {
    AddPasswordView()
}
