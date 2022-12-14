//
//  CallManagerViewModel.swift
//  CallKitty
//
//  Created by Oscar Castillo on 11/7/22.
//

import Foundation

enum AuthenticationStatus {
    case authenticated
    case notAuthenticated
    case invalid
}

class CallManagerViewModel: ObservableObject {
    @Published var authenticationStatus: AuthenticationStatus = .notAuthenticated
}
