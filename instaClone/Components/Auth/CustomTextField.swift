//
//  CustomTextField.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct CustomTextField: View {
    let placeholder: String
    @State private var text: String = ""
    var isSecure : Bool = false
    var body: some View {
        if isSecure {
            SecureField(placeholder, text: $text)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.none)
                .autocorrectionDisabled(true)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(7)
        }
        else{
            TextField(placeholder, text: $text)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.none)
                .autocorrectionDisabled(true)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(7)
        }
    }
}

#Preview {
    CustomTextField(placeholder: "Enter your email")
}

