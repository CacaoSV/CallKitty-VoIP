//
//  CallManagerView.swift
//  CallKitty
//
//  Created by Oscar Castillo on 11/7/22.
//

import SwiftUI

struct CallManagerView: View {
    let viewModel: CallManagerViewModel = CallManagerViewModel()
    
    var body: some View {
        switch viewModel.authenticationStatus {
        case .authenticated:
            EmptyView()
        case .notAuthenticated:
            AuthenticateView()
        case .invalid:
            EmptyView()
        }
    }
}

struct CallManagerView_Previews: PreviewProvider {
    static var previews: some View {
        CallManagerView()
    }
}
