//
//  ContentView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 24.03.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registerViewModel = RegisterViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.userSession == nil {
                    LoginView()
                        .environmentObject(registerViewModel)
                } else if let currentUser = viewModel.currentUser {
                    TabBarView(user: currentUser)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
