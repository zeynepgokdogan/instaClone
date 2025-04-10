//
//  SearchView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI
import FirebaseAuth

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVStack {
                    //viewModel.users
                    ForEach(UserModel.MOCKUSER) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profilePictureUrl ?? "avatar")
                                    .resizable()
                                    .frame(width: 60, height: 50)
                                    .clipShape(Circle())
                                    .padding(5)
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.bold)
                                        .font(.footnote)
                                    
                                    if let fullname = user.fullName {
                                        Text(fullname)
                                            .font(.footnote)
                                    }
                                }
                                Spacer()
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .searchable(text: $searchText)
                .onChange(of: searchText) { newValue in
                    viewModel.filterUsers(by: newValue)
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: UserModel)
            })
        }
    }
}

#Preview {
    SearchView()
}
