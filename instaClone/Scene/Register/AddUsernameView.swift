//
//  AddUserNameView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct AddUsernameView: View {
    @State private var isNextActive = false
    var body: some View {
        VStack(spacing: 20){
            CustomTitle(text: "Add Your Username")
            CustomSubtitle(text: "Your username will be used to identify you")
            CustomTextField(placeholder: "Enter the username")
            CustomButton(title: "Next") {
                isNextActive = true
            }
            NavigationLink(destination: AddPasswordView(), isActive: $isNextActive) {
                EmptyView()
            }
        }
        .padding()
    }
}

#Preview {
    AddUsernameView()
}
