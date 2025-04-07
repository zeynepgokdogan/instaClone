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
    }
    
    func validateEmail() -> Bool {
        if email.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessage = "Please enter your email."
            return false
        }
        if !email.contains("@") || !email.contains(".com") {
            errorMessage = "Please enter a valid email."
            return false
        }
        return true
    }

    func validateUsername() -> Bool {
        if username.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessage = "Please enter your username."
            return false
        }
        return true
    }

    func validatePassword() -> Bool {
        if password.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessage = "Please enter your password."
            return false
        }
        if password.count < 6 {
            errorMessage = "Password must be at least 6 characters long."
            return false
        }
        return true
    }

}
