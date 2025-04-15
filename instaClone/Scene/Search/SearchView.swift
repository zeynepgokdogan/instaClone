//
//  SearchView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.filteredUsers) { user in
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
                .padding(.horizontal)
            }
            .navigationTitle("search_title".localized)
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText)
            .onChange(of: searchText) { newValue in
                viewModel.filterUsers(by: newValue)
            }
            .onAppear {
                viewModel.filterUsers(by: "")
            }
            .navigationDestination(for: UserModel.self) { user in
                ProfileView(user: user)
            }
        }
    }
}


#Preview {
    SearchView()
}
