//
//  RegisterViewModel.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 6.04.2025.
//

import Foundation

class RegisterViewModel: ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String = ""
    @Published var isRegistered = false

    @MainActor
    func createUser() async throws{
        
        guard validateUsername(),
                validateEmail(),
                validatePassword() else {
              return
          }
        
        try await AuthService.shared
            .createUser(
                username: username,
                email: email,
                password: password
            )
        username = ""
        email = ""
        password = ""
        
        isRegistered = true

    }
    
    func validateEmail() -> Bool {
        if email.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessage = "enter_password_error".localized
            return false
        }
        if !email.contains("@") || !email.contains(".com") {
            errorMessage = "invalid_email_error".localized
            return false
        }
        return true
    }

    func validateUsername() -> Bool {
        if username.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessage = "enter_username_error".localized
            return false
        }
        return true
    }

    func validatePassword() -> Bool {
        if password.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessage = "enter_password_error".localized
            return false
        }
        if password.count < 6 {
            errorMessage = "password_length_error".localized
            return false
        }
        return true
    }

}
