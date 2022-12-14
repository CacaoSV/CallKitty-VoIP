//
//  AuthenticateViewModel.swift
//  CallKitty
//
//  Created by Oscar Castillo on 11/7/22.
//

import Foundation
import SendBirdCalls

class AuthenticateViewModel: ObservableObject {
    
    
    func authenticate(with userId: String) {
    }
    
    func deauthenticate() {
        SendBirdCall.deauthenticate { (error) in
            guard error == nil else {
                print(error)
                return
            }
            print("Successfully deauthenticated from SendBirdCalls")
        }
    }
}
