//
//  StoryImage.swift
//  Instagram-SwiftUI
//
//  Created by Ali Pishvaee on 5/13/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct StoryImage: View {
    var imageName: String
    var userName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.7), Color.purple.opacity(0.7), Color.yellow.opacity(0.7)]), startPoint: .leading, endPoint: .trailing), lineWidth: 3))
                .shadow(radius: 10)
                .frame(width: 70, height: 70)
            
            Text(userName)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .lineLimit(1)
                .frame(width: 70, height: 20)
        }
        .padding([.leading, .top], 10)
        
    }
}

struct StoryImage_Previews: PreviewProvider {
    static var previews: some View {
        StoryImage(imageName: "profileImage1", userName: "Your Story")
    }
}
