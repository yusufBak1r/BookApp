//
//  MyProjectApp.swift
//  MyProject
//
//  Created by yusuf bakır on 19.06.2023.
//

import SwiftUI
import FirebaseCore
import Firebase
@main
struct MyProjectApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      
    return true
  }
}
