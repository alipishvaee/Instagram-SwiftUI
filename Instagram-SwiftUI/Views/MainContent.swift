//
//  MainContent.swift
//  Instagram-SwiftUI
//
//  Created by Ali Pishvaee on 5/13/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct MainContent: View {
    var profileImageName: String
    var contentImageName: String
    var userName: String
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(profileImageName)
                    .resizable()
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0.7), Color.purple.opacity(0.7), Color.yellow.opacity(0.7)]), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                    .shadow(radius: 10)
                    .frame(width: 40, height: 40)
                
                Text(userName)
                    .foregroundColor(.white)
                    .font(.body)
                    .lineLimit(1)
                    .frame(height: 20)
                Spacer()
                Image("more").resizable().frame(width: 20, height: 20, alignment: .center).padding(.trailing)
            }.frame(height: 40)
                .padding([.leading, .top,.bottom], 10)
            
            Image(contentImageName)
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
            HStack {
                Image("like").resizable().frame(width: 30, height: 30).padding([.leading, .top])
                Image("comment").resizable().frame(width: 30, height: 30).padding([.leading, .top])
                Image("share").resizable().frame(width: 30, height: 30).padding([.leading, .top])
                Spacer()
                Image("bookmark").resizable().frame(width: 30, height: 30).padding([.trailing, .top])
            }
            Text("2,345 likes")
                .font(.system(size: 17, weight: .semibold, design: .default))
                .foregroundColor(.white).padding(.leading)
            Text(userName)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .bold, design: .default))
                .lineLimit(1)
                .frame(height: 20)
                .padding([.leading,.top])
            Text("Place the text you want to say here and wait until people see and comment and maybe add a like for it. That's it.Place the text you want to say here and wait until people see and comment and maybe add a like for it. That's it.Place the text you want to say here and wait until people see and comment and maybe add a like for it. That's it.Place the text you want to say here and wait until people see and comment and maybe add a like for it. That's it.")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .regular, design: .default))
                .multilineTextAlignment(.leading)
                .padding([.leading, .top])
        }
        
    }
}

struct MainContent_Previews: PreviewProvider {
    static var previews: some View {
        MainContent(profileImageName: "profileImage2", contentImageName: "content1", userName: "Jane Foster").background(Color.black).edgesIgnoringSafeArea(.all)
    }
}
