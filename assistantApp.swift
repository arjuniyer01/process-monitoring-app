//
//  assistantApp.swift
//  assistant
//
//  Created by Arjun Iyer on 11/20/22.
//

import SwiftUI
import Firebase

@main
struct assistantApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
