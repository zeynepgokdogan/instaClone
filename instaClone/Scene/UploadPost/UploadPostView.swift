//
//  UploadPostView.swift
//  instaClone
//
//  Created by Zeynep Gökdoğan on 10.04.2025.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    var body: some View {
        VStack{
            HStack{
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Text("New Post")
                Spacer()
                Button {
                } label: {
                    Text("Upload")
                }
            }
            .padding(.horizontal)
            HStack{
                if let image = viewModel.postImage{
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                TextField("Enter your caption...", text: $caption)
                
            }
            Spacer()
        }
        .onAppear(){
            imagePickerPresented.toggle()
        }
        .photosPicker(
            isPresented: $imagePickerPresented,
            selection: $viewModel.selectedImage
        )
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
