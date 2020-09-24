//
//  ContentView.swift
//  LoginPage
//
//  Created by Xiaochun Shen on 2020/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WelcomeText()
            UserImage()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("ProfilePicture")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(.bottom, 75.0)
            .frame(width: 150.0, height: 150.0)
            .cornerRadius(/*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
    }
}
