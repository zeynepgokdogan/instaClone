//
//  SearchItem.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 25.03.2025.
//

import SwiftUI

struct SearchItem: View {
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(width: 80, height: 70)
                .clipShape(Circle())
                .padding()
            VStack(alignment: .leading){
                Text("z.gokd").fontWeight(.bold).font(.footnote)
                Text("Zeynep Gökdoğan").font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    SearchItem()
}
