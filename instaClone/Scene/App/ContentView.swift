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
        Group{
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(RegisterViewModel())
            }
            else{
                TabBarView()
            }
        }
    }
}

#Preview {
    ContentView()
}
