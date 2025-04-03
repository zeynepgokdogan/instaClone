//
//  SearchView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                LazyVStack {
                    ForEach(User.MOCKUSER) { user in
                        HStack {
                            Image(user.profilePictureUrl ?? "avatar")
                                .resizable()
                                .frame(width: 60, height: 50)
                                .clipShape(Circle())
                                .padding(5)
                            VStack(alignment: .leading){
                                Text(user.username).fontWeight(.bold).font(.footnote)
                                if let fullname = user.fullName {
                                    Text(fullname).font(.footnote)
                                }
                            }
                            Spacer()
                        }                    }
                }
                .searchable(text: $searchText)
            }
        }
        .navigationDestination(for: User.self, destination: {user in ProfileView(user: user)})
    }
}

#Preview {
    SearchView()
}
