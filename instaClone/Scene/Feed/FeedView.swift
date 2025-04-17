import SwiftUI

struct FeedView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(PostModel.MOCKPOST) { post in
                        FeedCell(post: post)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("logo_text")
                        .resizable()
                        .frame(width: 100, height: 30)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    FeedView()
}

