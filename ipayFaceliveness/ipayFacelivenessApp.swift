//
//  ipayFacelivenessApp.swift
//  ipayFaceliveness
//
//  Created by Dhananjay Kumar on 29/04/24.
//

import SwiftUI
//import Amplify
//import AWSCognitoAuthPlugin

@available(iOS 14.0, *)
@main
struct ipayFacelivenessApp: App {
    
    @State public var options: [String: Any] = [
        "hideTitle" : true,
        "title" : "dssffsg",
        "hideScreen" : false
    ]
    
    init() {
            // Configure Amplify
            do {
                
                //try Amplify.add(plugin: AWSCognitoAuthPlugin())
                //try Amplify.configure()
                print("Amplify configured successfully")
            } catch {
                print("Failed to configure Amplify \(error)")
            }
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView(options: $options)
        }
    }
}
