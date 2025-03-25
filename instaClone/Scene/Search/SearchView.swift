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
        NavigationView{
            ScrollView{
                LazyVStack {
                    ForEach(0...3, id: \.self) { post in
                        SearchItem()
                    }
                }.searchable(text: $searchText)
            }
        }
    }
}

#Preview {
    SearchView()
}
