//
//  AuthenticateView.swift
//  CallKitty
//
//  Created by Oscar Castillo on 11/7/22.
//

import SwiftUI

struct AuthenticateView: View {
    
    let viewModel = AuthenticateViewModel()
    
    @State var userIdentifier: String = ""
    
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Authenticate to make Calls")
                .font(.title3)
            HStack(spacing: 24) {
                Text("User ID:")
                TextField(text: $userIdentifier, label: {
                    Text("Type your ID")
                })
            }
            .padding(.horizontal, 16)
            
            Button("Login", action: {
                viewModel.authenticate(with: userIdentifier)
            })
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding()
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            .padding()
            
            Button("Logout", action: {
                viewModel.deauthenticate()
            })
            
            Spacer()
        }
        .padding()
    }
}

struct AuthenticateView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticateView()
    }
}
