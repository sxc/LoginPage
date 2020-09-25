//
//  ContentView.swift
//  LoginPage
//
//  Created by Xiaochun Shen on 2020/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            WelcomeText()
            UserImage()
            UsernameTextField(username: $username)
            PasswordSecureField(password: $password)
            Button(action: {
                print("Login Button tapped.")
            }) {
                LoginButtonContent()
            }
            
                
 
        }
        .padding()
        
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

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .padding(10.0)
            .frame(width: 220.0, height: 60.0)
            .background(Color.green)
            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(Color("LightGray"))
            .cornerRadius(5)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color("LightGray"))
            .cornerRadius(5)
            .padding(.bottom, 20)
    }
}
