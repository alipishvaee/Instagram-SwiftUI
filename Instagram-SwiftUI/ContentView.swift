//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Ali Pishvaee on 5/13/20.
//  Copyright © 2020 AliPishvaee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        StoryImage(imageName: "profileImage1", userName: "Your Story")
                        StoryImage(imageName: "profileImage2", userName: "Jane Foster")
                        StoryImage(imageName: "profileImage3", userName: "Alan Walker")
                        StoryImage(imageName: "profileImage4", userName: "Scarlet Johanson")
                        StoryImage(imageName: "profileImage5", userName: "Taylor Brave")
                        StoryImage(imageName: "profileImage6", userName: "Jim Cavanah")
                        StoryImage(imageName: "profileImage7", userName: "Isabella Sworn")
                        StoryImage(imageName: "profileImage8", userName: "Meghan Turner")
                        StoryImage(imageName: "profileImage9", userName: "Sara Conner")
                    }
                }
                ScrollView(.vertical, showsIndicators: false) {
                    MainContent(profileImageName: "profileImage2", contentImageName: "content1", userName: "Jane Foster")
                    MainContent(profileImageName: "profileImage3", contentImageName: "content2", userName: "Alan Walker")
                    MainContent(profileImageName: "profileImage4", contentImageName: "content1", userName: "Scarlet Johanson")
                    MainContent(profileImageName: "profileImage5", contentImageName: "content2", userName: "Taylor Brave")
                    MainContent(profileImageName: "profileImage6", contentImageName: "content1", userName: "Jim Cavanah")
                    MainContent(profileImageName: "profileImage7", contentImageName: "content2", userName: "Isabella Sworn")
                    MainContent(profileImageName: "profileImage8", contentImageName: "content1", userName: "Sara Conner")
                }.frame(width: UIScreen.main.bounds.width, alignment: .leading)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



