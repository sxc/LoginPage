//
//  ContentView.swift
//  LoginPage
//
//  Created by Xiaochun Shen on 2020/9/24.
//

import SwiftUI

let storedUsername = "Myusername"
let storedPassword = "Mypassword"

struct ContentView: View {
    
    @State var username = ""
    @State var password = ""
    @State var authenticationDidFail = false
    @State var authenticationDidSucceed = true
    
    var body: some View {
        ZStack {
            VStack {
                WelcomeText()
                UserImage()
                UsernameTextField(username: $username)
                PasswordSecureField(password: $password)
                if authenticationDidFail {
                    Text("Entered credentials incorrect. Try again.")
                        .padding(.bottom, 15)
                        .foregroundColor(.red)
                }
                Button(action: {
                    if username == storedUsername && password == storedPassword {
                        authenticationDidSucceed = true
                        authenticationDidFail = false
                    } else {
                        authenticationDidFail = true
                    }
                }) {
                    LoginButtonContent()
                }
            }
            .padding()
            
            if authenticationDidSucceed {
                Text("Login successful!")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(width: 250.0, height: 80.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .animation(Animation.default)
            }
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
            .frame(width: 150.0, height: 150.0)
            .cornerRadius(/*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 75.0)
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
