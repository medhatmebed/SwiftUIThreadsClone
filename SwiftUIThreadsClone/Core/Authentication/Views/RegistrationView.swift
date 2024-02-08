//
//  RegistrationView.swift
//  SwiftUIThreadsClone
//
//  Created by Medhat Mebed on 2/8/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    var body: some View {
        VStack {
            Spacer()
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $userName)
                    .modifier(ThreadsTextFieldModifier())
                    .padding(.bottom, 12)
                Button {
                    
                } label: {
                    Text("Sing up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                      //  .cornerRadius(8) it's deprecated user .clipShape
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
                
                Divider()
                
                Button {
                    
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        
                        Text("Sign in")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)

            }
        }
    }
}

#Preview {
    RegistrationView()
}
