//
//  CallKittyApp.swift
//  CallKitty
//
//  Created by Oscar Castillo on 11/6/22.
//

import SwiftUI
import SendBirdCalls

@main
struct CallKittyApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate, SendBirdCallDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let appId: String = ""
        SendBirdCall.configure(appId: appId)
        SendBirdCall.addDelegate(self, identifier: "AppDelegate")
        return true
    }
    
    func didStartRinging(_ call: SendBirdCalls.DirectCall) {
    }
}
