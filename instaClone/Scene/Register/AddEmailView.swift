//
//  AddEmail.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddEmailView: View {
    @State private var isNextActive = false
    var body: some View {
        VStack(spacing: 20){
            CustomTitle(text: "Add Your Email")
            CustomSubtitle(text: "You'll use the email to sign in to your account")
            CustomTextField(placeholder: "Email")
            CustomButton(title: "Next") {
                isNextActive = true
            }
            NavigationLink(destination: AddUsernameView(), isActive: $isNextActive) {
                EmptyView()
            }
        }
        .padding()
    }
    
}

#Preview {
    AddEmailView()
}
